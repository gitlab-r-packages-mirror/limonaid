#' Create a series of nested LSEM `if` equations
#'
#' This function takes a series of conditions and corresponding values,
#' and builds an equation consisting of nested if statements.
#'
#' @param conditions The conditions - in the right order, i.e. in the
#' produced expression if nested if statements, the first condition in this
#' list will be checked first, then the second, etc.
#' @param values The values corresponding to each condition (in the
#' same order!).
#' @param elseExpr The value to return if there are no matches.
#' @param quoteValues Whether to use double quotes to quote the values.
#'
#' @return A character value.
#' @export
#'
#' @examples ### Relatively simple example with four levels of nesting
#' ls_eq_nestIfs(c("age.NAOK > 80",
#'                 "age.NAOK > 65",
#'                 "age.NAOK > 40",
#'                 "age.NAOK > 20"),
#'               c("Respectable",
#'                 "Roughly retired",
#'                 "Roughly middle-aged",
#'                 "Quite young"),
#'               "Very young",
#'               quoteValue=TRUE);
ls_eq_nestIfs <- function(conditions,
                          values,
                          elseExpr,
                          quoteValues = FALSE) {

  if (!(length(conditions) == length(values))) {
    stop("The `conditions` and `values` must have the exact ",
         "same length - but you specified ", length(conditions),
         " conditions (", vecTxtQ(conditions), ") and ", length(values),
         " values (", vecTxtQ(values), ")!");
  }

  if (quoteValues) {
    values <- paste0("\"", values, "\"");
    elseExpr <- paste0("\"", elseExpr, "\"");
  }

  for (depth in rev(seq_along(conditions))) {
    if (depth==length(conditions)) {
      ### This is the last element (the first we process); that means
      ### We start building the equation here
      equation <-
        ls_eq_if(
          conditions[[depth]],
          values[[depth]],
          elseExpr
        );
    } else {
      equation <-
        ls_eq_if(
          conditions[[depth]],
          values[[depth]],
          equation
        );
    }
  }
  return(equation);
}
