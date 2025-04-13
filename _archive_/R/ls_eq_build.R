#' Building LimeSurvey Expression Manager equations
#'
#' These are a set of really basic functions that facilitate
#' building LimeSurvey Expression Manager (LSEM) equations.
#'
#' `ls_eq_build()` just pastes together its three
#' arguments in the same order using a space as
#' separator. So it's mostly used for clarity when
#' building LSEM equations.
#'
#' `ls_eq_is()` uses `ls_eq_build()` to specify a logical
#' expression that is true when `varCode` equals `value`.
#'
#' `ls_eq_if()` builds an if/then/else expression; if
#' `cond` evaluates to TRUE, the LSEM uses `ifExpr`;
#' otherwise, it uses `elseExpr`.
#'
#' `ls_eq_ifRegex` checks a question against a regular expression.
#'
#' `ls_eq_isChecked()` and `ls_eq_isUnchecked()` return an
#' expression evaluating whether a checkbox is checked (or not).
#'
#' `ls_eq_brace()` simply embraces `expr`, an expression
#' (i.e. it prepends `{` and appends `}`).
#'
#' `ls_eq_quote()` simply embraces `expr`, an expression
#' (i.e. it prepends `'` and appends `'`).
#'
#' @param lhs The left-hand side expression.
#' @param operator The operator.
#' @param rhs The right-hand side expression.
#' @param varCode A LimeSurvey variable code.
#' @param value A value.
#' @param naok Whether to append ".NAOK" to the variable code.
#' @param cond A condition, for example created by `ls_eq_build()`
#' or `ls_eq_is()`.
#' @param ifExpr,elseExpr,expr An expression.
#' @param regex A regular expression.
#'
#' @return A character vector.
#'
#' @rdname lsem_equations
#' @aliases ls_eq_build ls_eq_is ls_eq_if ls_eq_brace
#' @aliases ls_eq_quote ls_eq_isChecked ls_eq_isUnchecked ls_eq_ifRegex
#'
#' @examples ls_eq_build("questionCode", "==", "Y");
#'
#' @export
ls_eq_build <- function(lhs,
                        operator,
                        rhs) {
  return(paste(lhs, operator, rhs));
}

#' @rdname lsem_equations
#' @export
ls_eq_is <- function(varCode,
                     value,
                     naok = TRUE) {
  ls_eq_build(ifelse(naok,
                     paste0(varCode, ".NAOK"),
                     varCode),
              "==",
              paste0("'", value, "'"));
}


#' @rdname lsem_equations
#' @export
ls_eq_isChecked <- function(varCode,
                            naok = TRUE) {
  ls_eq_build(ifelse(naok,
                     paste0(varCode, ".NAOK"),
                     varCode),
              "==",
              "'Y'");
}


#' @rdname lsem_equations
#' @export
ls_eq_isUnchecked <- function(varCode,
                              naok = TRUE) {
  return(
    paste0("(is_empty(",
           ifelse(naok,
                  paste0(varCode, ".NAOK"),
                  varCode),
           "))")
  );
}


#' @rdname lsem_equations
#' @export
ls_eq_if <- function(cond,
                     ifExpr,
                     elseExpr) {
  if (length(unique(length(cond), length(ifExpr), length(elseExpr))) == 1) {
    return(paste0("if(", cond, ", ", ifExpr, ", ", elseExpr, ")"));
  } else {
    stop("The lengths of the three arguments are not the same:\n",
         "the length of `cond` (", deparse(substitute(cond)),
         ") is ", length(cond), ";\n",
         "the length of `ifExpr` (", deparse(substitute(ifExpr)),
         ") is ", length(ifExpr), ";\n",
         "the length of `elseExpr` (", deparse(substitute(elseExpr)),
         ") is ", length(elseExpr), ";\n");
  }
}

#' @rdname lsem_equations
#' @export
ls_eq_ifRegex <- function(regex,
                          varCode,
                          ifExpr,
                          elseExpr,
                          naok = TRUE) {
  if (length(varCode) != 1) {
    stop("You have to provide exactly one `varCode`.");
  }
  if (length(regex) != 1) {
    stop("You have to provide exactly one `regex`.");
  }
  return(ls_eq_if(paste0("regexMatch('/", regex, "/', ",
                         ifelse(naok,
                                paste0(varCode, ".NAOK"),
                                varCode), ")"),
                  ifExpr,
                  elseExpr));
}





#' @rdname lsem_equations
#' @export
ls_eq_brace <- function(expr) {
  return(paste0("{", expr, "}"));
}

#' @rdname lsem_equations
#' @export
ls_eq_quote <- function(expr) {
  return(paste0("'", expr, "'"));
}
