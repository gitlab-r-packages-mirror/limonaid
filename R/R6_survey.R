#' R6 Class representing a LimeSurvey survey
#'
#' A survey has at least a title and a primary language.
Survey <- R6::R6Class(
  "Survey",

  ###---------------------------------------------------------------------------
  ### Public properties & methods
  ###---------------------------------------------------------------------------

  public = list(

    ###-------------------------------------------------------------------------
    ### Public properties
    ###-------------------------------------------------------------------------

    #' @field title The title of the survey in the primary language.
    title = NULL,

    #' @field primaryLanguage The primary language of the survey.
    primaryLanguage = NULL,

    #' @field groups The groups in the survey.
    groups = list(),

    ###-------------------------------------------------------------------------
    ### Initialization
    ###-------------------------------------------------------------------------

    #' @description
    #' Create a new survey object.
    #' @param title Title.
    #' @param primaryLanguage The primary language.
    #' @return A new `Survey` object.
    initialize = function(title,
                          primaryLanguage = "en") {
      self$title <- title;
      self$primaryLanguage <- primaryLanguage;
    },

    ###-------------------------------------------------------------------------
    ### Add a question group
    ###-------------------------------------------------------------------------

    #' @description
    #' Add a group to a survey object.
    #' @param titles The group's title, either as a named character vector
    #' where each element is the group title in a different language, and
    #' every element's name is the language code; or as a single character
    #' value, in which case the survey's primary language is used.
    #' @param descriptions The group description, either as a named character
    #' vector where each element is the group description in a different
    #' language, and every element's name is the language code; or as a single
    #' character value, in which case the survey's primary language is used.
    #' @param relevance The group's relevance equation.
    #' @param random_group The group's randomization group.
    #' @return Invisibly, the `Survey` object.
    add_group = function(titles,
                         descriptions = "",
                         relevance = 1,
                         random_group = "") {

      ###-----------------------------------------------------------------------
      ### Check and fix titles and descriptions
      ###-----------------------------------------------------------------------

      if (!is.character(titles) || (length(titles) == 0)) {
        stop("The group title or titles specified as `titles` ",
             "must be a character vector with at least one element!");
      }
      if (!is.character(descriptions) || (length(descriptions) == 0)) {
        stop("The group description or descriptions specified as ",
             "`descriptions` must be a character vector with at least ",
             "one element!");
      }

      if (length(titles) == 1) {
        titles <-
          stats::setNames(titles,
                          nm = self$primaryLanguage);
      } else {
        if (!(self$primaryLanguage %in% names(titles))) {
          stop("When providing multiple titles, at least one ",
               "of them has to be in the survey's primary language (",
               self$primaryLanguage, "').");
        }
      }

      if (length(descriptions) == 1) {
        descriptions <-
          stats::setNames(descriptions,
                          nm = self$primaryLanguage);
      } else {
        if (!(self$primaryLanguage %in% names(descriptions))) {
          stop("When providing multiple descriptions, at least one ",
               "of them has to be in the survey's primary language (",
               self$primaryLanguage, "').");
        }
      }

      ###-----------------------------------------------------------------------
      ### Create group object and store it
      ###-----------------------------------------------------------------------

      thisGroup <-
        list(id = private$new_group_id(),
             titles = titles,
             descriptions = descriptions,
             relevance = relevance,
             random_group = random_group);

      ### Add to groups in survey
      self$groups <-
        c(self$groups,
          list(thisGroup));

      ### Set name
      names(self$groups)[
        length(self$groups)] <- thisGroup$id;

      ### Return self invisibly
      return(invisible(self));
    },

    ###-------------------------------------------------------------------------
    ### Add a question
    ###-------------------------------------------------------------------------

    #' @description
    #' Add a question to a survey object.
    #' @param groupId The id of the group to add the question to.
    #' @param code The question code.
    #' @param type The question type.
    #' @param lsType The question type, as LimeSurvey question type.
    #' @param ... Additional arguments are used to create the Question using
    #' `Question$new`.
    #' @return Invisibly, the `Survey` object.
    add_question = function(groupId,
                            code,
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

      if (!(groupId %in% self$get_group_ids)) {
        stop("The group id you specified, ",
             groupId,
             " does not exist in this survey (ids that do exist: ",
             vecTxt(self$get_group_ids),
             ").");
      }

      if (is.null(type) && is.null(lsType)) {
        stop("You must specify a question type!");
      }

      ###-----------------------------------------------------------------------
      ### Create question object and store it
      ###-----------------------------------------------------------------------

      thisQuestion <-
        Question$new(id = private$new_question_id(),
                     code = code,
                     type = type,
                     lsType = lsType,
                     primaryLanguage = self$primaryLanguage,
                     ...);

      ### Add to group
      self$groups[[groupId]]$questions <-
        c(self$groups[[groupId]]$questions,
          list(thisQuestion));

      ### Set name
      names(self$groups[[groupId]]$questions)[
        length(self$groups[[groupId]]$questions)] <- code;

      ### Return self invisibly
      return(invisible(self));
    }

  ), ### End of public properties and methods

  ###---------------------------------------------------------------------------
  ### Active fields
  ###---------------------------------------------------------------------------

  active = list(

    #' @field get_group_ids A list of all group ids.
    get_group_ids = function(value) {
      if (missing(value)) {
        return(unlist(lapply(self$groups,
                             function(x) return(x$id)),
                      use.names=FALSE));
      } else {
        stop("You cannot directly set group ids.");
      }
    }

  ), ### End of private properties and methods

  ###---------------------------------------------------------------------------
  ### Private properties & methods
  ###---------------------------------------------------------------------------

  private = list(

    ### Unique numeric identifiers for groups and questions in this survey
    groupIdCounter = 0,
    questionIdCounter = 0,
    answerOptionIdCounter = 0,

    ### Create a new group identifier and return it
    new_group_id = function() {
      private$groupIdCounter <-
        private$groupIdCounter + 1;
      return(private$groupIdCounter);
    },

    ### Create a new group identifier and return it
    new_question_id = function() {
      private$questionIdCounter <-
        private$questionIdCounter + 1;
      return(private$questionIdCounter);
    }

  ) ### End of private properties and methods

);

