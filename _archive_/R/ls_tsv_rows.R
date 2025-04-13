#' Display one or more rows from a LimeSurvey dataframe, omitting empty columns
#'
#' @param dfRows A dataframe with the selected rows.
#'
#' @return The rows, with empty columns omitted.
#'
#' @examples ### Add later.
#' @export
ls_tsv_rows <- function(dfRows) {
  return(dfRows[,
                unlist(
                  lapply(
                    dfRows,
                    function(x)
                      return(!all(is.na(x) | (nchar(as.character(x)) == 0)))
                  ))]);
}
