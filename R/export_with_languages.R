#' Export a survey with a specific primary and additional languages
#'
#' Sometimes it is useful to export a version of a survey with a
#' different primary language, and/or less additional languages. This
#' function allows that.
#'
#' @param survey The Survey object.
#' @param language The desired primary language.
#' @param path The path where to save the .TSV file.
#' @param additional_languages If specified, the selection of additional
#' languages. If not specifies
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
  function(survey,
           language,
           path,
           additional_languages = NULL,
           new_sid = survey$sid,
           backupLanguage = language,
           prefix = "limesurvey--",
           suffix = "",
           parallel = TRUE) {

    res <- survey$clone();

    if (is.null(additional_languages)) {
      res$additional_languages <-
        setdiff(c(res$additional_languages, res$languages),
                language);
    } else {
      if ((additional_languages != "") &&
          !all(additional_languages %in% c(res$additional_languages, res$languages))) {
        stop("You requested additional languages that are not in the provided survey! ",
             "You requested ", vecTxt(additional_languages, useQuote = "`"),
             ", but the survey you passed only has languages ",
             vecTxt(c(res$additional_languages, res$languages),
                    useQuote = "`"),
             ".");
      } else {
        res$additional_languages <- additional_languages;
      }
    }

    res$sid <- new_sid;

    res$language <- language;

    fullSurveyFilename <-
      file.path(limesurveyPath,
                paste0(prefix, new_sid,
                       suffix, ".txt"));

    res$export_to_tsv(file = fullSurveyFilename,
                      preventOverwriting = FALSE,
                      silent = FALSE,
                      parallel = parallel,
                      backupLanguage = backupLanguage);

    return(invisible(survey));

  }
