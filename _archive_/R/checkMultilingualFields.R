checkMultilingualFields <- function(x,
                                    language,
                                    classCheck = is.character,
                                    className = "character") {
  xName <- deparse(substitute(x));

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
           "simultaneously (i.e. if you provide a vector with length > 1), ",
           "exactly one of them must be the primary language (",
           language, "). However, the names of `", xName, "` are ",
           vecTxtQ(names(xName)), ".");
    }
  }

  return(x);

}
