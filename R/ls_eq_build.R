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
#' `ls_eq_brace()` simply embraces `expr`, an expression
#' (i.e. it prepends `{` and appends `}`).
#'
#' @param lhs The left-hand side expression.
#' @param operator The operator.
#' @param rhs The right-hand side expression.
#' @param varCode A LimeSurvey variable code.
#' @param value A value.
#' @param cond A condition, for example created by `ls_eq_build()`
#' or `ls_eq_is()`.
#' @param ifExpr,elseExpr,expr An expression.
#'
#' @return A character vector.
#'
#' @rdname lsem_equations
#' @aliases ls_eq_build ls_eq_is ls_eq_if ls_eq_brace
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
                     value) {
  ls_eq_build(varCode,
              "==",
              paste0("\", value, "\""));
}

#' @rdname lsem_equations
#' @export
ls_eq_if <- function(cond,
                     ifExpr,
                     elseExpr) {
  return(paste0("if(", cond, ", ", ifExpr, ", ", elseExpr, ")"));
}

#' @rdname lsem_equations
#' @export
ls_eq_brace <- function(expr) {
  return(paste0("{", expr, "}"));
}
