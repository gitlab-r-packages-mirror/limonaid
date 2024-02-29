#' R6 Class representing a LimeSurvey group
#'
#' A group is mostly just a container.
#'
#' @export
Group <- R6::R6Class(
  "Group",

  ###---------------------------------------------------------------------------
  ### Public properties & methods
  ###---------------------------------------------------------------------------

  public = list(

    ###-------------------------------------------------------------------------
    ### Public properties
    ###-------------------------------------------------------------------------

    #' @field group_name The group name / title / label
    group_names = "",

    #' @field description The group description
    descriptions = "",

    #' @field grelevance The relevance equation for the group
    grelevance = 1,

    #' @field group_order The group order (in the survey)
    group_order = NULL,

    #' @field randomization_group The randomization group (that the group is a part of)
    randomization_group = NULL,

    #' @field languages The languages of the title and description elements.
    languages = NULL,

    #' @field id The identifier of the group (a unique number in a survey)
    id = NULL,


    ###-------------------------------------------------------------------------
    ### Initialization
    ###-------------------------------------------------------------------------

    #' @description
    #' Create a new group object. Most of this text comes directly
    #' from the TSV manual page at
    #' <https://manual.limesurvey.org/Tab_Separated_Value_survey_structure>, so
    #' please see that page for more details.
    #' @param code The question code.
    #' @param type The human-readable question type (see details).
    #' @param helpTexts The help text(s).
    #' @param relevance The question's relevance equation.
    #' @param validation The question's validation.
    #' @param mandatory Whether the question is mandatory (`Y` or `N`);.
    #' @param other Whether the question has an 'other' option (`Y` or `N`).
    #' @param ... Any additional options, stored as a named list in the
    #' `otherOptions` property by assigning `as.list(...)`.
    #' @return A new `Group` object.
    initialize = function(group_names = "",
                          descriptions = "",
                          grelevance = 1,
                          group_order = NULL,
                          randomization_group = "",
                          languages = "en",
                          id = NULL,
                          ...) {

      ###-----------------------------------------------------------------------
      ### Check whether the multilingual fields have been passed properly
      ###-----------------------------------------------------------------------

      # questionTexts <-
      #   checkMultilingualFields(questionTexts,
      #                           language = language);
      #
      # helpTexts <-
      #   checkMultilingualFields(helpTexts,
      #                           language = language);
      #
      # otherReplaceTexts <-
      #   checkMultilingualFields(otherReplaceTexts,
      #                           language = language);

      ###-----------------------------------------------------------------------
      ### Set all other arguments as 'other options'
      ###-----------------------------------------------------------------------

      otherOptions <- list(...);

      ###-----------------------------------------------------------------------
      ### Set fields
      ###-----------------------------------------------------------------------

      self$id <- id;

      self$languages <- languages;

      self$group_names <- group_names;
      self$descriptions <- descriptions;

    },

    ###-------------------------------------------------------------------------
    ### Add a a question
    ###-------------------------------------------------------------------------

    #' @description
    #' Add a question to a group. Most of this text comes directly
    #' from the TSV manual page at
    #' https://manual.limesurvey.org/Tab_Separated_Value_survey_structure, so
    #' please see that page for more details.
    #' @param code The answer option code.
    #' @param optionTexts The answer option text(s).
    #' @param type.scale `0` or `1` (e.g. for dual-scale; 'scale_id').
    #' @param relevance If using assessment option, this is the assessment
    #' value for the answer ('assessment_value').
    #' @return Invisibly, the question object.
    add_question = function(code,
                            optionTexts,
                            type.scale = 0,
                            relevance = "") {

      ###-----------------------------------------------------------------------
      ### Check code
      ###-----------------------------------------------------------------------

      if (!grepl("^[a-zA-Z0-9]*$",
                 code)) {
        stop("Answer option codes may only consist of digits and ",
             "letters!");
      }

      ###-----------------------------------------------------------------------
      ### Check whether the multilingual fields have been passed properly
      ###-----------------------------------------------------------------------

      optionTexts <-
        checkMultilingualFields(optionTexts,
                                language = self$language);

      ###-----------------------------------------------------------------------
      ### Set the answer options
      ###-----------------------------------------------------------------------

      self$answerOptions <-
        c(self$answerOptions,
          list(list(code = code,
                    optionTexts = optionTexts,
                    type.scale = type.scale,
                    relevance = relevance)));

      ### Set name of this new option
      names(self$answerOptions)[
        length(self$answerOptions)] <- code;

      ### Return self invisibly
      return(invisible(self));
    }

  )
)
