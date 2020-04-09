#' @export
ls_tsv_get_rows <- function(data,
                            ...) {
  dots <- list(...);

  if (length(dots) == 1) {
    res <- data[data[, names(dots)] == dots, ];
  } else if (length(dots) > 1) {
    warning("Not implemented yet; returning NULL.");
    return(invisible(NULL));
  } else {
    return(invisible(NULL));
  }

  return(ls_tsv_rows(res));

}

