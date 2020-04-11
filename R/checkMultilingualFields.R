checkMultilingualFields <- function(x,
                                    language,
                                    classCheck = is.character,
                                    className = "character") {
  xName <- substitute(deparse(x));

  if (!classCheck(x) || (length(x) == 0)) {
    stop("For `", xName, "`, you must pass ",
         "a ", className, " vector with at least one element!");
  } else if (length(x) == 1) {
    x <-
      stats::setNames(x,
                      nm = language);
  } else {
    if (!(language %in% names(x))) {
      stop("When providing `", xName, "` in multiple languages ",
           "simultaneously, exactly one of them must be the primary ",
           "language (",
           language, ").");
    }
  }

  return(x);

}
