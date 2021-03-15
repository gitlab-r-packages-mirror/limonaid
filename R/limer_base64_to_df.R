#' Convert base64 encoded data to a data frame
#'
#' This function converts raw base64 results into a data frame.
#' @param x \dots
#' @importFrom utils read.csv
#' @export
#' @examples \dontrun{
#' limer_base64_to_df()
#' }
limer_base64_to_df <- function(x, encoding="UTF-8") {
  raw_csv <- rawToChar(
    jsonlite::base64_dec(x)
    #base64enc::base64decode(x)
  );
  return(
    read.csv(
      textConnection(
        raw_csv,
        encoding=encoding
      ),
      stringsAsFactors = FALSE,
      sep = ";"
    )
  );
}
