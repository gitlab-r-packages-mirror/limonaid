#' Recode a set of LS variables codes and values into LSEM equations
#'
#' This function takes a dataframe with LimeSurvey (LS) variable codes
#' and values, and builds a nested set of LimeSurvey Equation Manager (LSEM)
#' if/then/else equations where the variable code in each row (in the
#' `varCodeCol`) is compared to the corresponding value (i.e. the value in
#' the same row in the `valueCol` column) using the operator specified in that
#' row in the `operatorCol` column (or the `==` operator, if no operator is
#' specified). In the case of a match, the value in the corresponding
#' `recodeToCol` column is returned. If there is no match, the comparison
#' on the next row is evaluated, all the way down. If nothing matches, the
#' `elseExpr` is returned.
#'
#' @param data The dataframe.
#' @param varCodeCol The name or index of the column with the variable code.
#' @param valueCol The name or index of the column with the values to compare
#' the value of the variable code to.
#' @param recodeToCol The name or index of the column with the value to return
#' in the case of a match.
#' @param operatorCol The name or index of the column with the operator used
#' to build each logical expression.
#' @param elseExpr The value to return if there are no matches.
#'
#' @return A character value.
#' @export
#'
#' @examples ### Provide later
ls_recodeTable_to_equations <- function(data,
                                        varCodeCol = limonaid::opts$get("recTab2Eq_varCodeCol"),
                                        valueCol = limonaid::opts$get("recTab2Eq_valueCol"),
                                        recodeToCol = limonaid::opts$get("recTab2Eq_recodeToCol"),
                                        operatorCol = limonaid::opts$get("recTab2Eq_operatorCol"),
                                        elseExpr = limonaid::opts$get("eq_elseExpr"),
                                        naok = TRUE) {
  if (is.null(operatorCol)) {
    operatorCol <- "operatorCol";
    data[, operatorCol] <- "==";
  }
  ### Build two lists; the first has the comparison equations,
  ### the second the corresponding value to recode to if true
  exprList <- list();
  recodeToList <- list();
  for (i in 1:nrow(data)) {
    exprList[[i]] <-
      ls_eq_build(
        ifelse(rep(naok, nrow(data)),
               paste0(data[i, varCodeCol], ".NAOK"),
               data[i, varCodeCol]),
        data[i, operatorCol],
        paste0("'", data[i, valueCol], "'")
      );
    recodeToList[[i]] <- data[i, recodeToCol];
  }
  ### Then loop through these again, building the if statements;
  ### we start at the beginning and keep track of our depth to
  ### be able to add parentheses. I'm pretty sure there's a way
  ### to do this elegantly using recursion, but well :-)
  for (depth in rev(seq_along(exprList))) {
    if (depth==length(exprList)) {
      ### This is the last element (the first we process); that means
      ### We start building the equation here
      equation <-
        ls_eq_if(
          exprList[[depth]],
          recodeToList[[depth]],
          elseExpr
        );
    } else {
      equation <-
        ls_eq_if(
          exprList[[depth]],
          recodeToList[[depth]],
          equation
        );
    }
  }
  return(equation);
}
