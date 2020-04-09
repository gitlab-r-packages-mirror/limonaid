#' @export
ls_read_tsv <- function(file) {
  return(
    read.delim(
      file,
      stringsAsFactors = FALSE
    )
  );
}
