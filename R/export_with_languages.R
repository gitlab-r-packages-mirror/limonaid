#' Export a survey with a specific primary and additional languages
#'
#' Sometimes it is useful to export a version of a survey with a
#' different primary language, and/or less additional languages. This
#' function allows that.
#'
#' @param x The Survey object.
#' @param language The desired primary language.
#' @param path The path where to save the .TSV file.
#' @param additional_languages If specified, the selection of additional
#' languages. If not specified, the survey's primary language will just be
#' switched to `language`, and all original languages will be retained.
#' @param new_sid If specified, a new sid to use.
#' @param backupLanguage The language to use if an element is not specified
#' in one of the languages.
#' @param prefix The prefix to use in the filename.
#' @param suffix The suffix to use in the filename.
#' @param parallel Whether to use multiple cores when exporting the survey.
#'
#' @return Invisibly, the cloned and altered survey object.
#' @export
#'
#' @examples ### Add later
export_with_languages <-
  function(x,
           language,
           path,
           additional_languages = NULL,
           new_sid = x$sid,
           backupLanguage = x$language,
           prefix = "limesurvey--",
           suffix = "",
           parallel = TRUE) {

    res <- x$clone();

    res$sid <- new_sid;

    res$language <- language;

    if (is.null(additional_languages)) {
      res$additional_languages <-
        setdiff(c(x$additional_languages, x$language),
                language);
    } else {
      if ((additional_languages != "") &&
          !all(additional_languages %in% c(x$additional_languages, x$language))) {
        stop("You requested additional languages that are not in the provided survey! ",
             "You requested ", vecTxt(additional_languages, useQuote = "`"),
             ", but the survey you passed only has languages ",
             vecTxt(c(x$additional_languages, x$language),
                    useQuote = "`"),
             ".");
      } else {
        res$additional_languages <- additional_languages;
      }
    }

    fullSurveyFilename <-
      file.path(path,
                paste0(prefix, new_sid,
                       suffix, ".txt"));

    res$export_to_tsv(file = fullSurveyFilename,
                      preventOverwriting = FALSE,
                      silent = FALSE,
                      parallel = parallel,
                      backupLanguage = backupLanguage);

    return(invisible(res));

  }
