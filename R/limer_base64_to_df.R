#' Convert base64 encoded data to a data frame
#'
#' This function converts raw base64 results into a data frame.
#' @param x \dots
#' @param encoding Either `NULL` or an encoding to pass to [textConnection()].
#' @importFrom utils read.csv
#' @export
#' @examples \dontrun{
#' limer_base64_to_df()
#' }
limer_base64_to_df <- function(x, encoding=NULL, iconvArgs=list(from="UTF-8", to="UTF-8")) {
  raw_csv <- rawToChar(
    jsonlite::base64_dec(x)
    #base64enc::base64decode(x)
  );

  if (!is.null(iconvArgs)) {
    raw_csv <-
      do.call(
        iconv,
        c(list(raw_csv),
          iconvArgs)
      );
  }

  if (is.null(encoding)) {
    res <-
      read.csv(
        textConnection(raw_csv),
        stringsAsFactors = FALSE,
        sep = ";"
      );
  } else {
    res <-
      read.csv(
        textConnection(
          raw_csv,
          encoding=encoding
        ),
        stringsAsFactors = FALSE,
        sep = ";"
      );
  }

  return(res);

}
