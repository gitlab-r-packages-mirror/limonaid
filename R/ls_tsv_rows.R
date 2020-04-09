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
