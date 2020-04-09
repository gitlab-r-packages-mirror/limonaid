#' Options for the limonaid package
#'
#' The `limonaid::opts` object contains three functions to set, get, and reset
#' options used by the escalc package. Use `limonaid::opts$set` to set options,
#' `limonaid::opts$get` to get options, or `limonaid::opts$reset` to reset specific or
#' all options to their default values.
#'
#' It is normally not necessary to get or set `limonaid` options.
#'
#' The following arguments can be passed:
#'
#' \describe{
#'   \item{...}{For `limonaid::opts$set`, the dots can be used to specify the options
#'   to set, in the format `option = value`, for example,
#'   `EFFECTSIZE_POINTESTIMATE_NAME_IN_DF = "\n"`. For
#'   `limonaid::opts$reset`, a list of options to be reset can be passed.}
#'   \item{option}{For `limonaid::opts$set`, the name of the option to set.}
#'   \item{default}{For `limonaid::opts$get`, the default value to return if the
#'   option has not been manually specified.}
#' }
#'
#' The following options can be set:
#'
#' \describe{
#'
#'   \item{}{The name of the column
#'   with the effect size values.}
#'
#'   \item{}{The name of the column
#'   with the effect size variance.}
#'
#'   \item{}{The name of the column
#'   with the missing values.}
#'
#' }
#'
#' @aliases opts set get reset
#'
#' @usage opts
#'
#' @examples ### Get the default utteranceMarker
#' limonaid::opts$get(complecs_entitySheet);
#'
#' ### Set it to a custom version, so that every line starts with a pipe
#' limonaid::opts$set(complecs_entitySheet = "sheet_with_entities");
#'
#' ### Check that it worked
#' limonaid::opts$get(complecs_entitySheet);
#'
#' ### Reset this option to its default value
#' limonaid::opts$reset(complecs_entitySheet);
#'
#' ### Check that the reset worked, too
#' limonaid::opts$get(complecs_entitySheet);
#'
#' @export
opts <- list();

opts$set <- function(...) {
  dots <- list(...);
  dotNames <- names(dots);
  names(dots) <-
    paste0("limonaid.", dotNames);
  if (all(dotNames %in% names(opts$defaults))) {
    do.call(options,
            dots);
  } else {
    stop("Option '", option, "' is not a valid (i.e. existing) option for limonaid!");
  }
}

opts$get <- function(option, default=FALSE) {
  ### manual to prevent problems with devtools:document
  if (option == "workspace_id") {
    return(getOption("limonaid.workspace_id",
                     "default"));
  }
  optionName <- as.character(substitute(option));
  if (!optionName %in% names(opts$defaults)) {
    stop("Option '", optionName, "' is not a valid (i.e. existing) option for limonaid!");
  } else {
    return(getOption(paste0("limonaid.", optionName),
                     opts$defaults[[optionName]]));
  }
}

opts$reset <- function(...) {
  optionNames <-
    unlist(lapply(as.list(substitute(...())),
                  as.character));
  if (length(optionNames) == 0) {
    do.call(opts$set,
            opts$defaults);
  } else {
    prefixedOptionNames <-
      paste0("limonaid.", optionNames);
    if (all(optionNames %in% names(opts$defaults))) {
      do.call(opts$set,
              opts$defaults[optionNames]);
    } else {
      invalidOptions <-
        !(optionNames %in% names(opts$defaults));
      stop("Option(s) ", vecTxtQ(optionNames[invalidOptions]),
           "' is/are not a valid (i.e. existing) option for limonaid!");
    }
  }
}

opts$defaults <-
  list(

    silent=TRUE,

    ### For keeping track of unique identifiers
    idCounter = 1

  )

