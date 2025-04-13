#' R6 Class representing a LimeSurvey question
#'
#' A question has at least a code and a primary language.
#'
#' @export
Question <- R6::R6Class(
  "Question",

  ###---------------------------------------------------------------------------
  ### Public properties & methods
  ###---------------------------------------------------------------------------

  public = list(

    ###-------------------------------------------------------------------------
    ### Public properties
    ###-------------------------------------------------------------------------

    #' @field code The code of the question.
    code = NULL,

    #' @field id The identifier of the question (a unique number in a survey)
    id = NULL,

    #' @field type The question type.
    type = NULL,

    #' @field lsType The question type in LimeSurvey's format.
    lsType = NULL,

    #' @field questionTexts The question text(s) in all languages.
    questionTexts = NULL,

    #' @field helpTexts The question help text(s) in all languages.
    helpTexts = NULL,

    #' @field relevance The relevance.
    relevance = 1,

    #' @field validation The question's validation.
    validation = "",

    #' @field language The primary language of the question.
    language = NULL,

    #' @field answerOptions The answer options in the question.
    answerOptions = list(),

    #' @field subquestions The subquestions in the question.
    subquestions = list(),

    #' @field mandatory Whether the question is mandatory (`Y` or `N`).
    mandatory = NULL,

    #' @field other Whether the question has an 'other' option (`Y` or `N`).
    other = NULL,

    #' @field otherReplaceTexts If the question has an 'other' option, its
    #' label if the default label should be overwritten (multilingual).
    otherReplaceTexts = NULL,

    #' @field default The default value.
    default = NULL,

    #' @field same_default Not entirely sure what this does.
    same_default = NULL,

    #' @field array_filter The question code of the array filter question
    #' to apply.
    array_filter = NULL,

    #' @field cssclass The CSS class(es) to apply to this question.
    cssclass = NULL,

    #' @field hide_tip Whether to hide the tip (`Y` or `N`).
    hide_tip = NULL,

    #' @field otherOptions Any additional options, stored as a named list
    #' by assigning `as.list(...)`.
    otherOptions = NULL,

    ###-------------------------------------------------------------------------
    ### Initialization
    ###-------------------------------------------------------------------------

    #' @description
    #' Create a new question object. Most of this text comes directly
    #' from the TSV manual page at
    #' <https://manual.limesurvey.org/Tab_Separated_Value_survey_structure>, so
    #' please see that page for more details.
    #' @details The human-readable question types are (with some additional
    #' variants also being valid, in any case the literal labels used at
    #' <https://manual.limesurvey.org/Question_object_types#Current_question_types>):
    #'
    #' - "`array dual scale`"
    #' - "`5 point choice`"
    #' - "`5 point array`"
    #' - "`10 point array`"
    #' - "`yes/no/uncertain array`"
    #' - "`date`"
    #' - "`increase/same/decrease array`"
    #' - "`array`" (this is the "`array (flexible labels)`" type)
    #' - "`gender`"
    #' - "`array by column`"
    #' - "`language switch`"
    #' - "`multiple numerical input`",
    #' - "`radio`" (this is the "`list`" type)
    #' - "`checkboxes`" (this is the "`multiple choice`" type)
    #' - "`numerical input`",
    #' - "`list with comment`"
    #' - "`multiple choice with comments`"
    #' - "`multiple short text`"
    #' - "`ranking`"
    #' - "`short text`"
    #' - "`long text`"
    #' - "`huge text`"
    #' - "`text display`"
    #' - "`yes/no`"
    #' - "`multiple texts array`",
    #' - "`multiple dropdown array`"
    #' - "`file`"
    #' - "`dropdown`"
    #' - "`equation`".
    #' @param code The question code.
    #' @param type The human-readable question type (see details).
    #' @param lsType The type as LimeSurvey type ("`1`"; "`5`"; "`A`" to "`Y`",
    #' except "`J`", "`V`" and "`W`"; "`!`"; "`:`"; "`;`"; "`*`"; or "`|`" --see
    #' <https://manual.limesurvey.org/Question_object_types#Current_question_types>).
    #' @param id The identifier of the question (in a survey).
    #' @param questionTexts The question text(s).
    #' @param helpTexts The help text(s).
    #' @param relevance The question's relevance equation.
    #' @param validation The question's validation.
    #' @param mandatory Whether the question is mandatory (`Y` or `N`);.
    #' @param other Whether the question has an 'other' option (`Y` or `N`).
    #' @param otherReplaceTexts If the question has an 'other' option, its
    #' label if the default label should be overwritten (multilingual).
    #' @param default The default value.
    #' @param same_default `Y` for true, in which case any default value set
    #' for the primary language applies to other languages.
    #' @param array_filter The question code of the array filter question
    #' to apply.
    #' @param cssclass The CSS class(es) to apply to this question.
    #' @param hide_tip Whether to hide the tip (`Y` or `N`).
    #' @param language The question's primary language.
    #' @param ... Any additional options, stored as a named list in the
    #' `otherOptions` property by assigning `as.list(...)`.
    #' @return A new `Survey` object.
    initialize = function(code,
                          type = NULL,
                          lsType = NULL,
                          id = NULL,
                          questionTexts = "",
                          helpTexts = "",
                          relevance = 1,
                          validation = "",
                          mandatory = "N",
                          other = "N",
                          otherReplaceTexts = "",
                          default = "",
                          same_default = "0",
                          array_filter = "",
                          cssclass = "",
                          hide_tip = "",
                          language = "en",
                          ...) {

      ###-----------------------------------------------------------------------
      ### Check whether the multilingual fields have been passed properly
      ###-----------------------------------------------------------------------

      questionTexts <-
        checkMultilingualFields(questionTexts,
                                language = language);

      helpTexts <-
        checkMultilingualFields(helpTexts,
                                language = language);

      otherReplaceTexts <-
        checkMultilingualFields(otherReplaceTexts,
                                language = language);

      ###-----------------------------------------------------------------------
      ### Check question type
      ###-----------------------------------------------------------------------

      type <- trimws(tolower(type));

      if (is.null(lsType)) {
        if (type %in% c("array dual scale",
                        "array (dual scale)")) {
          lsType <- "1";

        } else if (type %in% c("5 point choice")) {
          lsType <- "5";

        } else if (type %in% c("5 point array",
                               "array (5 point choice)")) {
          lsType <- "A";

        } else if (type %in% c("10 point array",
                               "array (10 point choice)")) {
          lsType <- "B";

        } else if (type %in% c("yes, no, uncertain array",
                               "yes/no/uncertain array",
                               "array (yes/no/uncertain)")) {
          lsType <- "C";

        } else if (type %in% c("date")) {
          lsType <- "D";

        } else if (type %in% c("increase, same, decrease array",
                               "increase/same/decrease array",
                               "array (increase/same/decrease)")) {
          lsType <- "E";

        } else if (type %in% c("array",
                               "array (flexible labels)")) {
          lsType <- "F";

        } else if (type %in% c("gender")) {
          lsType <- "G";

        } else if (type %in% c("array by column",
                               "array (flexible labels) by column")) {
          lsType <- "H";

        } else if (type %in% c("language switch", "language")) {
          lsType <- "I";

        } else if (type %in% c("multiple numerical input", "slider")) {
          lsType <- "K";

        } else if (type %in% c("list", "radio", "radiobuttons", "radio buttons")) {
          lsType <- "L";

        } else if (type %in% c("multiple choice", "checkboxes", "checkbox")) {
          lsType <- "M";

        } else if (type %in% c("numerical input")) {
          lsType <- "N";

        } else if (type %in% c("list with comment",
                               "list (with comment)")) {
          lsType <- "O";

        } else if (type %in% c("multiple choice with comments",
                               "multiple choice (with comments)")) {
          lsType <- "P";

        } else if (type %in% c("multiple short text",
                               "short text (multiple)")) {
          lsType <- "Q";

        } else if (type %in% c("ranking")) {
          lsType <- "R";

        } else if (type %in% c("short free text",
                               "free text (short)",
                               "text (short)",
                               "short text")) {
          lsType <- "S";

        } else if (type %in% c("long free text",
                               "free text (long)",
                               "text (long)",
                               "long text")) {
          lsType <- "T";

        } else if (type %in% c("huge free text",
                               "free text (huge)",
                               "text (huge)",
                               "huge text")) {
          lsType <- "U";

        } else if (type %in% c("boilerplate", "text display")) {
          lsType <- "X";

        } else if (type %in% c("yes/no",
                               "yes, no")) {
          lsType <- "Y";

        } else if (type %in% c("array (flexible labels) multiple texts",
                               "multiple texts array",
                               "multiple texts array")) {
          lsType <- ":";

        } else if (type %in% c("array (flexible labels) multiple drop down",
                               "multiple drop down array",
                               "multiple dropdown array")) {
          lsType <- ":";

        } else if (type %in% c("file",
                               "file upload",
                               "upload")) {
          lsType <- "|";

        } else if (type %in% c("dropdown",
                               "list (dropdown)")) {
          lsType <- "!";

        } else if (type %in% c("equation")) {
          lsType <- "*";

        } else {
          stop("Questions of type '", type, "' are not yet supported.");
        }
      } else {
        type <- lsType;
        ### Optionally check lsType against valid values
      }

      ###-----------------------------------------------------------------------
      ### Set all other arguments as 'other options'
      ###-----------------------------------------------------------------------

      otherOptions <- list(...);

      ###-----------------------------------------------------------------------
      ### Check question type and set additional settings
      ###-----------------------------------------------------------------------

      if (type == "slider") {
        otherOptions$slider_layout <- 1;
        if (!"slider_accuracy" %in% names(otherOptions))
          otherOptions$slider_accuracy <- 1;
        if (!"slider_handle" %in% names(otherOptions))
          otherOptions$slider_handle <- 2;
      }

      ###
      ###
      ### Ideally, implement validation of all options
      ###
      ###

      ###-----------------------------------------------------------------------
      ### Set fields
      ###-----------------------------------------------------------------------

      self$id <- id;
      self$code <- code;
      self$type <- type;
      self$lsType <- lsType;

      self$language <- language;

      self$questionTexts <- questionTexts;
      self$helpTexts <- helpTexts;

      self$relevance <- relevance;
      self$validation <- validation;
      self$mandatory <- mandatory;
      self$other <- other;

      self$otherReplaceTexts <- otherReplaceTexts;

      self$default <- default;
      self$same_default <- same_default;
      self$array_filter <- array_filter;
      self$cssclass <- cssclass;
      self$hide_tip <- hide_tip;

      self$otherOptions <- otherOptions;

    },

    ###-------------------------------------------------------------------------
    ### Add an answer option
    ###-------------------------------------------------------------------------

    #' @description
    #' Add an answer option to a question. Most of this text comes directly
    #' from the TSV manual page at
    #' https://manual.limesurvey.org/Tab_Separated_Value_survey_structure, so
    #' please see that page for more details.
    #' @param code The answer option code.
    #' @param optionTexts The answer option text(s).
    #' @param type.scale `0` or `1` (e.g. for dual-scale; 'scale_id').
    #' @param relevance If using assessment option, this is the assessment
    #' value for the answer ('assessment_value').
    #' @return Invisibly, the question object.
    add_answer_option = function(code,
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
    },

    ###-------------------------------------------------------------------------
    ### Add a subquestion
    ###-------------------------------------------------------------------------

    #' @description
    #' Add a subquestion to a question. Most of this text comes directly from
    #' the TSV manual page at
    #' https://manual.limesurvey.org/Tab_Separated_Value_survey_structure, so
    #' please see that page for more details.
    #' @param code The subquestions code.
    #' @param subquestionTexts The subquestion text(s).
    #' @param relevance When to show this subquestion.
    #' @param helpTexts As far as I know not yet implemented in LimeSurvey;
    #' but the TSV help page says "(Future) to support subquestion-level help".
    #' @param type.scale `0` or `1`, depending upon question type (e.g. array
    #' text will have two scales)0 or 1, depending upon question type (e.g.
    #' array text will have two scales)."
    #' @param validation As far as I know not yet implemented in LimeSurvey;
    #' but the TSV help page says "(Future) to support subquestion-level
    #' regular expression validation (e.g. for address parts)"
    #' @param mandatory As far as I know not yet implemented in LimeSurvey;
    #' but the TSV help page says "(Future) to support subquestion-level
    #' mandatory (e.g. make only a few subquestions mandatory)"
    #' @param default If set, then this is the default value for the
    #' subquestion (inserted into defaultvalues table).
    #' @param same_default If set, then the default for the primary language
    #' is used for all other languages.
    #' @return Invisibly, the question object.
    add_subquestion = function(code,
                               subquestionTexts,
                               relevance = "",
                               helpTexts = NULL,
                               type.scale = 0,
                               validation = "",
                               mandatory = "",
                               default = "",
                               same_default = "") {

      ###-----------------------------------------------------------------------
      ### Check code
      ###-----------------------------------------------------------------------

      if (!grepl("^[a-zA-Z0-9]*$",
                 code)) {
        stop("Subquestion codes may only consist of digits and ",
             "letters!");
      }

      ###-----------------------------------------------------------------------
      ### Check whether the multilingual fields have been passed properly
      ###-----------------------------------------------------------------------

      subquestionTexts <-
        checkMultilingualFields(subquestionTexts,
                                language = self$language);

      if (!is.null(helpTexts)) {
        helpTexts <-
          checkMultilingualFields(helpTexts,
                                  language = self$language);
      } else {
        helpTexts <- stats::setNames(rep("", length(subquestionTexts)),
                                     nm = names(subquestionTexts));
      }

      ###-----------------------------------------------------------------------
      ### Set the subquestions
      ###-----------------------------------------------------------------------

      self$subquestions <-
        c(self$subquestions,
          list(list(code = code,
                    subquestionTexts = subquestionTexts,
                    relevance = relevance,
                    type.scale = type.scale,
                    helpTexts = helpTexts,
                    validation = validation,
                    mandatory = mandatory,
                    default = default,
                    same_default = same_default)));

      ### Set name of this new subquestion
      names(self$subquestions)[
        length(self$subquestions)] <- code;

      ### Return self invisibly
      return(invisible(self));
    }

  )
)
