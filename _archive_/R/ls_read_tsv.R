#' Read a LimeSurvey Tab-Separated Values file
#'
#' @param file The filename to read.
#' @param encoding The encoding to use when reading the file.
#'
#' @return A dataframe.
#'
#' @examples ### Get location of one of the example files
#' exampleFile <-
#'   system.file(
#'     "extdata",
#'     "export-of-survey-with-one-question-as-tsv.txt",
#'     package = "limonaid"
#'   );
#'
#' ### Import file
#' lsrv <- limonaid::ls_read_tsv(exampleFile);
#' @export
ls_read_tsv <- function(file,
                        encoding = limonaid::opts$get("encoding")) {
  return(
    utils::read.delim(
      file,
      fileEncoding = encoding,
      stringsAsFactors = FALSE
    )
  );
}
