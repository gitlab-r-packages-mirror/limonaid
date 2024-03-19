#' R6 Class representing a LimeSurvey group
#'
#' A group is mostly just a container for questions.
#'
#' @examples
#' myGroup <- limonaid::Group$new(
#'   group_name = "My Group"
#' );
#' myGroup$add_question(
#'   "testQuestion1",
#'   questionTexts = "First question",
#'   type="free text (short)"
#' );
#' myGroup$add_question(
#'   "testQuestion2",
#'   questionTexts = "Second question",
#'   type="radio"
#' );
#' myGroup$questions$testQuestion2$add_answer_option(
#'   "option1",
#'   "First option"
#' );
#' myGroup$questions$testQuestion2$add_answer_option(
#'   "option2",
#'   "Second option"
#' );
#' myGroup$questions$testQuestion2$add_subquestion(
#'   "subquestion1",
#'   "First subquestion"
#' );
#' myGroup$questions$testQuestion2$add_subquestion(
#'   "subquestion2",
#'   "Second subquestion"
#' );
#'
#' cat(as.character(myGroup$export_to_lsg()));
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
    group_name = "",

    #' @field description The group description
    description = "",

    #' @field grelevance The relevance equation for the group
    grelevance = 1,

    #' @field group_order The group order (in the survey)
    group_order = NULL,

    #' @field randomization_group The randomization group (that the group is a part of)
    randomization_group = NULL,

    #' @field language The language of the group; or primary language, if there are multiple languages.
    language = NULL,

    #' @field additional_languages Any additional languages for the title and description elements.
    additional_languages = "",

    #' @field id The identifier of the group (a unique number in a survey)
    id = NULL,

    #' @field sid The identifier of the survey that this group belongs to
    sid = NULL,

    #' @field otherOptions Any additional options, stored as a named list
    #' by assigning `as.list(...)`.
    otherOptions = NULL,

    #' @field questions The questions in this group
    questions = list(),

    ###-------------------------------------------------------------------------
    ### Initialization
    ###-------------------------------------------------------------------------

    #' @description
    #' Create a new group object. Most of this text comes directly
    #' from the TSV manual page at
    #' <https://manual.limesurvey.org/Tab_Separated_Value_survey_structure>, so
    #' please see that page for more details.
    #' @param group_name The title of the group (if there are multiple languages,
    #' a named vector where every element is the title in another language and
    #' every element's name is the language code).
    #' @param description The description of the group (if there are multiple
    #' languages, a named vector where every element is the title in another
    #' language and every element's name is the language code).
    #' @param grelevance The group's relevance equation
    #' @param group_order The group order (if the group is part of a survey)
    #' @param randomization_group The group's randomization group
    #' @param language The group's only or primary language
    #' @param additional_languages Any additional languages
    #' @param id Optionally, the id of the group.
    #' @param sid Optionally, the identifier of the survey that this group
    #' belongs to.
    #' @param new_l10n_id,new_question_id,new_subquestion_id Optionally,
    #' functions to generate new unique identifiers for localization, questions,
    #' and subquestions.
    #' @param ... Any additional options, stored as a named list in the
    #' `otherOptions` property by assigning `as.list(...)`.
    #' @return A new `Group` object.
    initialize = function(group_name = "",
                          description = "",
                          grelevance = 1,
                          group_order = NULL,
                          randomization_group = NULL,
                          language = "en",
                          additional_languages = "",
                          id = NULL,
                          sid = NULL,
                          new_l10n_id = NULL,
                          new_question_id = NULL,
                          new_subquestion_id = NULL,
                          ...) {

      ###-----------------------------------------------------------------------
      ### Check whether the multilingual fields have been passed properly
      ###-----------------------------------------------------------------------

      group_name <-
        checkMultilingualFields(group_name,
                                language = language);

      description <-
        checkMultilingualFields(description,
                                language = language);

      ###-----------------------------------------------------------------------
      ### Set all other arguments as 'other options'
      ###-----------------------------------------------------------------------

      otherOptions <- list(...);

      ###-----------------------------------------------------------------------
      ### Override identifier functions
      ###-----------------------------------------------------------------------

      if (!is.null(new_l10n_id)) {
        self$new_l10n_id <- new_l10n_id;
      }

      if (!is.null(new_question_id)) {
        self$new_question_id <- new_question_id;
      }

      if (!is.null(new_subquestion_id)) {
        self$new_subquestion_id <- new_subquestion_id;
      }

      ###-----------------------------------------------------------------------
      ### Set fields
      ###-----------------------------------------------------------------------

      if (is.null(id)) {
        self$id <- 1;
      } else {
        self$id <- id;
      }

      if (is.null(sid)) {
        self$sid <- 1;
      } else {
        self$sid <- sid;
      }

      if (is.null(group_order)) {
        self$group_order <- 1;
      } else {
        self$group_order <- group_order;
      }

      self$group_name <- group_name;
      self$description <- description;

      self$grelevance <- grelevance;

      self$group_order <- group_order;

      self$randomization_group <- randomization_group;

      self$language <- language;

      self$additional_languages <- additional_languages;

      self$otherOptions <- otherOptions;

    },

    ###-------------------------------------------------------------------------
    ### Add a question
    ###-------------------------------------------------------------------------

    #' @description
    #' Add a question to a group object.
    #' @param code The question code.
    #' @param type The question type.
    #' @param lsType The question type, as LimeSurvey question type.
    #' @param ... Additional arguments are used to create the Question using
    #' `Question$new`.
    #' @return Invisibly, the `Survey` object.
    add_question = function(code,
                            type = NULL,
                            lsType = NULL,
                            ...) {

      ###-----------------------------------------------------------------------
      ### Check whether this code is unique
      ###-----------------------------------------------------------------------

      ###
      ###
      ###
      ###
      ###

      if (is.null(type) && is.null(lsType)) {
        stop("You must specify a question type!");
      }

      ###-----------------------------------------------------------------------
      ### Create question object and store it
      ###-----------------------------------------------------------------------

      thisQuestion <-
        Question$new(id = self$new_question_id(),
                     code = code,
                     type = type,
                     lsType = lsType,
                     language = self$language,
                     new_l10n_id = self$new_l10n_id,
                     new_subquestion_id = self$new_subquestion_id,
                     ...);

      ### Add to group
      self$questions <-
        c(self$questions,
          list(thisQuestion));

      ### Set name
      names(self$questions)[
        length(self$questions)] <- code;

      ### Return self invisibly
      return(invisible(self));
    },

    ###-------------------------------------------------------------------------
    ### Export group to an LSG (xml) file
    ###-------------------------------------------------------------------------

    #' @description
    #' Export the group as an LSG (xml) file.
    #' @param file The filename to which to save the file.
    #' @param preventOverwriting Whether to prevent overwriting.
    #' @param parallel Whether to work serially or in parallel.
    #' @param encoding The encoding to use
    #' @param silent Whether to be silent or chatty.
    #' @param backupLanguage The language to get content from if not from
    #' the primary langage.
    #' @return Invisibly, the `Survey` object.
    export_to_lsg = function(file = NULL,
                             preventOverwriting = limonaid::opts$get("preventOverwriting"),
                             encoding = limonaid::opts$get("encoding"),
                             silent = limonaid::opts$get("silent"),
                             backupLanguage = self$language) {

      ###-----------------------------------------------------------------------
      ### Configure language list
      ###-----------------------------------------------------------------------

      if ((length(self$additional_languages) > 0) &&
          nchar(self$additional_languages[1]) > 0) {
        ### We have multiple languages
        languageList <-
          c(self$language,
            self$additional_languages);
      } else {
        ### Only one language
        languageList <- self$language;
      }

      ###-----------------------------------------------------------------------
      ### Create XML document
      ###-----------------------------------------------------------------------

      xml <- xml2::xml_new_root("document");

      xml2::xml_add_child(xml, "LimeSurveyDocType", "Group");
      xml2::xml_add_child(xml, "DBVersion", "495");

      ###-----------------------------------------------------------------------
      ### Add languages
      ###-----------------------------------------------------------------------

      xml2::xml_add_child(
        xml,
        xmlNode_from_vector("languages", "language", languageList)
      );

      ###-----------------------------------------------------------------------
      ### Add groups (well, one group only)
      ###-----------------------------------------------------------------------

      xml2::xml_add_child(xml, "groups");

      xml2::xml_add_child(
        xml2::xml_child(xml, "groups"),
        xmlNode_from_vector("fields", "fieldname", ls_xmlFields$groups)
      );

      xml2::xml_add_child(xml2::xml_find_all(xml, "groups"), "rows");

      tempNode <- xml2::xml_find_all(xml, "groups/rows");

      xml2::xml_add_child(
        tempNode,

        xmlNode_from_vector(
          "row",
          subNames = ls_xmlFields$groups,
          c(self$id,
            self$sid,
            self$group_order,
            na_if_null(self$randomization_group),
            na_if_null(self$grelevance)
          ),
          cdata = TRUE
        )
      );

      ###-----------------------------------------------------------------------
      ### Add group localization
      ###-----------------------------------------------------------------------

      xml2::xml_add_child(xml, "group_l10ns");

      xml2::xml_add_child(
        xml2::xml_child(xml, "group_l10ns"),
        xmlNode_from_vector("fields", "fieldname", ls_xmlFields$group_l10ns)
      );

      xml2::xml_add_child(xml2::xml_find_all(xml, "group_l10ns"), "rows");

      tempNode <- xml2::xml_find_all(xml, "group_l10ns/rows");

      for (currentLanguage in languageList) {

        xml2::xml_add_child(
          tempNode,

          xmlNode_from_vector(
            "row",
            subNames = ls_xmlFields$group_l10ns,
            c(self$new_l10n_id(),
              self$id,
              self$group_name[currentLanguage],
              self$description[currentLanguage],
              currentLanguage,
              self$sid,
              self$group_order,
              na_if_null(self$randomization_group),
              na_if_null(self$grelevance)
            ),
            cdata = TRUE
          )
        );

      }

      ###-----------------------------------------------------------------------
      ### Add questions
      ###-----------------------------------------------------------------------

      xml2::xml_add_child(xml, "questions");

      xml2::xml_add_child(
        xml2::xml_child(xml, "questions"),
        xmlNode_from_vector("fields", "fieldname", ls_xmlFields$questions)
      );

      xml2::xml_add_child(xml2::xml_find_all(xml, "questions"), "rows");

      tempNode <- xml2::xml_find_all(xml, "questions/rows");

      for (currentQuestionCode in names(self$questions)) {

        xml2::xml_add_child(
          tempNode,
          self$questions[[currentQuestionCode]]$xmlExport_row_question(silent = silent)
        );

      }

      ###-----------------------------------------------------------------------
      ### Add subquestions
      ###-----------------------------------------------------------------------

      if (any(unlist(lapply(self$questions, \(x) x$has_subquestions)))) {

        xml2::xml_add_child(xml, "subquestions");

        xml2::xml_add_child(
          xml2::xml_child(xml, "subquestions"),
          xmlNode_from_vector("fields", "fieldname", ls_xmlFields$subquestions)
        );

        xml2::xml_add_child(xml2::xml_find_all(xml, "subquestions"), "rows");

        tempNode <- xml2::xml_find_all(xml, "subquestions/rows");

        subquestionRows <- lapply(self$questions,
                                  \(x) x$xmlExport_row_subquestions());

        for (currentSubquestionRow in unlist(subquestionRows, recursive=FALSE)) {

          xml2::xml_add_child(
            tempNode,
            currentSubquestionRow
          );

        }

      }

      ###-----------------------------------------------------------------------
      ### Add question_l10ns
      ###-----------------------------------------------------------------------

      xml2::xml_add_child(xml, "question_l10ns");

      xml2::xml_add_child(
        xml2::xml_child(xml, "question_l10ns"),
        xmlNode_from_vector("fields", "fieldname", ls_xmlFields$question_l10ns)
      );

      xml2::xml_add_child(xml2::xml_find_all(xml, "question_l10ns"), "rows");

      tempNode <- xml2::xml_find_all(xml, "question_l10ns/rows");

      question_l10nsRows <- lapply(self$questions,
                                \(x) x$xmlExport_row_question_l10ns(id_fun = self$new_l10n_id));

      for (currentQuestion_l10nsRow in unlist(question_l10nsRows, recursive=FALSE)) {

        xml2::xml_add_child(
          tempNode,
          currentQuestion_l10nsRow
        );

      }

      ###-----------------------------------------------------------------------
      ### Add answers
      ###-----------------------------------------------------------------------

      xml2::xml_add_child(xml, "answers");

      ###-----------------------------------------------------------------------
      ### Add answer_l10ns
      ###-----------------------------------------------------------------------

      xml2::xml_add_child(xml, "answer_l10ns");

      ###-----------------------------------------------------------------------
      ### Add question_attributes
      ###-----------------------------------------------------------------------

      xml2::xml_add_child(xml, "question_attributes");

      ###-----------------------------------------------------------------------
      ### Potentially write file and return result
      ###-----------------------------------------------------------------------

      if (is.null(file)) {

        return(xml);

      } else {

      }

    },

    #' @description Create a new question identifier and return it
    #' @return The identifier
    new_question_id = function() {
      private$questionIdCounter <-
        private$questionIdCounter + 1;
      return(private$questionIdCounter);
    },

    #' @description Create a new subquestion identifier and return it
    #' @return The identifier
    new_subquestion_id = function() {
      private$subquestionIdCounter <-
        private$subquestionIdCounter + 1;
      return(private$subquestionIdCounter);
    },

    #' @description Create a new localization identifier and return it
    #' @return The identifier
    new_l10n_id = function() {
      private$l10n_IdCounter <-
        private$l10n_IdCounter + 1;
      return(private$l10n_IdCounter);
    }

  ), ### End of public properties and methods

  ###---------------------------------------------------------------------------
  ### Private properties & methods
  ###---------------------------------------------------------------------------

  private = list(

    ### Unique numeric identifiers for groups and questions in this survey
    groupIdCounter = 0,
    questionIdCounter = 1000,
    subquestionIdCounter = 10000,
    l10n_IdCounter = 20000,

    ### Counters for exporting
    exportQuestionIdMapping = c()

  ) ### End of private properties and methods

)
