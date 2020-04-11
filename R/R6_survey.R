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

    #' @field titles The title of the survey in the primary language and
    #' any additional languages
    titles = NULL,

    #' @field descriptions The descriptions of the survey in the primary
    #' language and any additional languages
    descriptions = NULL,

    #' @field welcomeTexts The welcome texts of the survey in the primary
    #' language and any additional languages
    welcomeTexts = NULL,

    #' @field endTexts The end texts of the survey in the primary
    #' language and any additional languages
    endTexts = NULL,

    #' @field endURLs The end URLs of the survey in the primary
    #' language and any additional languages
    endURLs = NULL,

    #' @field endURLdescriptions The end URL descriptions of the survey in
    #' the primary language and any additional languages
    endURLdescriptions = NULL,

    #' @field dateformat The date format to use in
    #' the primary language and any additional languages; the index of
    #' the option from the dropdown in LimeSurvey (6 is the ISO standard,
    #' "YYYY-MM-DD").
    dateformat = 6,

    #' @field numberformat The number format to use in
    #' the primary language and any additional languages (for periods as
    #' decimal marks, `0`; for commas as decimal marks, `1`).
    numberformat = 0,

    #' @field sid The unique survey identifier; if this is free when
    #' importing the survey, this will be used.
    sid = NULL,

    #' @field gsid The Survey Group identifier.
    gsid = "1",

    #' @field admin The name of the survey administrator
    admin = NULL,

    #' @field adminemail The email address of the survey administrator
    adminemail = "",

    #' @field anonymized Whether the survey uses anonymized
    #' responses (`Y` or `N`).
    anonymized = "Y",

    #' @field faxto The contents of the "Fax to" field
    faxto = "",

    #' @field format How to present the survey (`Q` for question by
    #' question; `G` for group by group; and `A` for all in one).
    format = "G",

    #' @field savetimings Whether to save timings of responses (`Y` or `N`).
    savetimings = "Y",

    #' @field template The name of the LimeSurvey theme to use.
    template = "",

    #' @field language The primary language of the survey.
    language = NULL,

    #' @field additional_languages Any additional languages the survey uses.
    additional_languages = "",

    #' @field datestamp Whether to datestamp responses (`Y` or `N`).
    datestamp = "Y",

    #' @field usecookie Whether to use cookies to enable answer persistence.
    usecookie = "N",

    #' @field allowregister Whether to allow public registration (`Y` or `N`).
    allowregister = "N",

    #' @field allowsave Whether to allow users to save their responses and
    #' returning later (`Y` or `N`).
    allowsave = "N",

    #' @field autonumber_start Where to start autonumbering
    autonumber_start = 1,

    #' @field autoredirect Whether to automatically redirect users to a
    #' URL (`Y` or `N`).
    autoredirect = "Y",

    #' @field allowprev Whether to allow users to return to previous
    #' pages (`Y` or `N`).
    allowprev = "N",

    #' @field printanswers Whether to allow printing of answer (`Y` or `N`).
    printanswers = "N",

    #' @field ipaddr Whether to store IP addresses (`Y` or `N`).
    ipaddr = "N",

    #' @field refurl Whether to store the referring URL (`Y` or `N`).
    refurl = "N",

    #' @field showsurveypolicynotice Whether to show the data policy
    #' notice (`Y` or `N`).
    showsurveypolicynotice = "N",

    #' @field publicstatistics Whether to have public statistics (`Y` or `N`).
    publicstatistics = "N",

    #' @field publicgraphs Whether to show graphs in public
    #' statistics (`Y` or `N`).
    publicgraphs = "N",

    #' @field listpublic Whether to list the survey publicly (`Y` or `N`).
    listpublic = "N",

    #' @field htmlemail Whether to use HTML format for token
    #' emails (`Y` or `N`).
    htmlemail = "Y",

    #' @field sendconfirmation Whether to send confirmation
    #' emails (`Y` or `N`).
    sendconfirmation = "N",

    #' @field tokenanswerspersistence Whether to use token-based
    #' response persistence (`Y` or `N`).
    tokenanswerspersistence = "N",

    #' @field assessments Whether to use assessments (`Y` or `N`).
    assessments = "N",

    #' @field usecaptcha Whether to use CAPTCHA's (`Y` or `N`).
    usecaptcha = "N",

    #' @field usetokens Whether to use tokens (`Y` or `N`).
    usetokens = "N",

    #' @field bounce_email Where bouncing emails should be sent.
    bounce_email = "",

    #' @field emailresponseto Where detailed admin notifications emails
    #' should be sent.
    emailresponseto = "",

    #' @field emailnotificationto Where a notification should be sent for new
    #' responses.
    emailnotificationto = "",

    #' @field tokenlength The token length.
    tokenlength = 15,

    #' @field showxquestions Whether to show "There are X questions in this
    #' survey" (`Y` or `N`).
    showxquestions = "N",

    #' @field showgroupinfo Whether to show group name and info (`Y`, `N`,
    #' or `X` to show nothing).
    showgroupinfo = "X",

    #' @field shownoanswer Whether to show the "No answer" option (`Y` or `N`).
    shownoanswer = "N",

    #' @field showqnumcode Whether to show answer codes or numbers  (`Y`, `N`,
    #' or `X` to show nothing).
    showqnumcode = "",

    #' @field bounceprocessing Whether to process bouncing emails? (`Y` or `N`).
    bounceprocessing = "N",

    #' @field showwelcome Whether to show the welcome page (`Y` or `N`).
    showwelcome = "N",

    #' @field showprogress Whether to show the progress bar (`Y` or `N`).
    showprogress = "",

    #' @field questionindex Whether to show the question index  (`0` to
    #' disable; can also be set to incremental or full (`1` and `2`?)).
    questionindex = "0",

    #' @field navigationdelay The navigation delay in seconds
    navigationdelay = "0",

    #' @field nokeyboard Whether to show the on-screen keyboard (`Y` or `N`).
    nokeyboard = "N",

    #' @field alloweditaftercompletion Whether to allow multiple
    #' reponses (`N`) or to allow updating responses with one token (`Y`)?
    alloweditaftercompletion = "N",

    #' @field googleanalyticsstyle The google analytics settings; `0` for None,
    #' other values for other settings.
    googleanalyticsstyle = 0,

    #' @field googleanalyticsapikey The google analytics API key.
    googleanalyticsapikey = "",

    #' @field groups The groups in the survey.
    groups = list(),

    ###-------------------------------------------------------------------------
    ### Initialization
    ###-------------------------------------------------------------------------

    #' @description
    #' Create a new survey object.
    #' @param titles The titles of the survey in the primary language and
    #' optionally any addiitonal languages.
    #' @param descriptions The descriptions of the survey in the primary
    #' language and any additional languages
    #' @param welcomeTexts The welcome texts of the survey in the primary
    #' language and any additional languages
    #' @param endTexts The end texts of the survey in the primary
    #' language and any additional languages
    #' @param endURLs The end URLs of the survey in the primary
    #' language and any additional languages
    #' @param endURLdescriptions The end URL descriptions of the survey in
    #' the primary language and any additional languages
    #' @param dateformat The date format to use in
    #' the primary language and any additional languages; the index of
    #' the option from the dropdown in LimeSurvey (6 is the ISO standard,
    #' "YYYY-MM-DD").
    #' @param numberformat The number format to use in
    #' the primary language and any additional languages (for periods as
    #' decimal marks, `0`; for commas as decimal marks, `1`).
    #' @param sid The unique survey identifier; if this is free when
    #' importing the survey, this will be used.
    #' @param gsid The Survey Group identifier.
    #' @param admin The name of the survey administrator
    #' @param adminemail The email address of the survey administrator
    #' @param anonymized Whether the survey uses anonymized
    #' responses (`Y` or `N`).
    #' @param faxto The contents of the "Fax to" field
    #' @param format How to present the survey (`Q` for question by
    #' question; `G` for group by group; and `A` for all in one).
    #' @param savetimings Whether to save timings of responses (`Y` or `N`).
    #' @param template The name of the LimeSurvey theme to use.
    #' @param language The primary language of the survey.
    #' @param additional_languages Any additional languages the survey uses.
    #' @param datestamp Whether to datestamp responses (`Y` or `N`).
    #' @param usecookie Whether to use cookies to enable answer persistence.
    #' @param allowregister Whether to allow public registration (`Y` or `N`).
    #' @param allowsave Whether to allow users to save their responses and
    #' returning later (`Y` or `N`).
    #' @param autonumber_start Where to start autonumbering
    #' @param autoredirect Whether to automatically redirect users to a
    #' URL (`Y` or `N`).
    #' @param allowprev Whether to allow users to return to previous
    #' pages (`Y` or `N`).
    #' @param printanswers Whether to allow printing of answer (`Y` or `N`).
    #' @param ipaddr Whether to store IP addresses (`Y` or `N`).
    #' @param refurl Whether to store the referring URL (`Y` or `N`).
    #' @param showsurveypolicynotice Whether to show the data policy
    #' notice (`Y` or `N`).
    #' @param publicstatistics Whether to have public statistics (`Y` or `N`).
    #' @param publicgraphs Whether to show graphs in public
    #' statistics (`Y` or `N`).
    #' @param listpublic Whether to list the survey publicly (`Y` or `N`).
    #' @param htmlemail Whether to use HTML format for token
    #' emails (`Y` or `N`).
    #' @param sendconfirmation Whether to send confirmation
    #' emails (`Y` or `N`).
    #' @param tokenanswerspersistence Whether to use token-based
    #' response persistence (`Y` or `N`).
    #' @param assessments Whether to use assessments (`Y` or `N`).
    #' @param usecaptcha Whether to use CAPTCHA's (`Y` or `N`).
    #' @param usetokens Whether to use tokens (`Y` or `N`).
    #' @param bounce_email Where bouncing emails should be sent.
    #' @param emailresponseto Where detailed admin notifications emails
    #' should be sent.
    #' @param emailnotificationto Where a notification should be sent for new
    #' responses.
    #' @param tokenlength The token length.
    #' @param showxquestions Whether to show "There are X questions in this
    #' survey" (`Y` or `N`).
    #' @param showgroupinfo Whether to show group name and info (`Y`, `N`,
    #' or `X` to show nothing).
    #' @param shownoanswer Whether to show the "No answer" option (`Y` or `N`).
    #' @param showqnumcode Whether to show answer codes or numbers  (`Y`, `N`,
    #' or `X` to show nothing).
    #' @param bounceprocessing Whether to process bouncing emails? (`Y` or `N`).
    #' @param showwelcome Whether to show the welcome page (`Y` or `N`).
    #' @param showprogress Whether to show the progress bar (`Y` or `N`).
    #' @param questionindex Whether to show the question index  (`0` to
    #' disable; can also be set to incremental or full (`1` and `2`?)).
    #' @param navigationdelay The navigation delay in seconds
    #' @param nokeyboard Whether to show the on-screen keyboard (`Y` or `N`).
    #' @param alloweditaftercompletion Whether to allow multiple
    #' reponses (`N`) or to allow updating responses with one token (`Y`)?
    #' @param googleanalyticsstyle The google analytics settings; `0` for None,
    #' other values for other settings.
    #' @param googleanalyticsapikey The google analytics API key.
    #' @return A new `Survey` object.
    initialize = function(titles,
                          descriptions = "",
                          welcomeTexts = "",
                          endTexts = "",
                          endURLs = "",
                          endURLdescriptions = "",
                          dateformat = 6,
                          numberformat = 0,
                          sid = NULL,
                          gsid = 1,
                          admin = "Admin Name",
                          adminemail = "email@add.ress",
                          anonymized = "Y",
                          faxto = "",
                          format = "G",
                          savetimings = "Y",
                          template = "",
                          language = "en",
                          additional_languages = "",
                          datestamp = "Y",
                          usecookie = "N",
                          allowregister = "N",
                          allowsave = "N",
                          autonumber_start = 1,
                          autoredirect = "Y",
                          allowprev = "N",
                          printanswers = "N",
                          ipaddr = "N",
                          refurl = "N",
                          showsurveypolicynotice = "N",
                          publicstatistics = "N",
                          publicgraphs = "N",
                          listpublic = "N",
                          htmlemail = "Y",
                          sendconfirmation = "N",
                          tokenanswerspersistence = "N",
                          assessments = "N",
                          usecaptcha = "N",
                          usetokens = "N",
                          bounce_email = "",
                          emailresponseto = "",
                          emailnotificationto = "",
                          tokenlength = 15,
                          showxquestions = "N",
                          showgroupinfo = "X",
                          shownoanswer = "N",
                          showqnumcode = "",
                          bounceprocessing = "N",
                          showwelcome = "N",
                          showprogress = "",
                          questionindex = "0",
                          navigationdelay = "0",
                          nokeyboard = "N",
                          alloweditaftercompletion = "N",
                          googleanalyticsstyle = 0,
                          googleanalyticsapikey = "") {

      ###-----------------------------------------------------------------------
      ### Check whether the multilingual fields have been passed properly
      ###-----------------------------------------------------------------------

      titles <-
        checkMultilingualFields(titles,
                                language = language);

      descriptions <-
        checkMultilingualFields(descriptions,
                                language = language);

      welcomeTexts <-
        checkMultilingualFields(welcomeTexts,
                                language = language);

      endTexts <-
        checkMultilingualFields(endTexts,
                                language = language);

      endURLs <-
        checkMultilingualFields(endURLs,
                                language = language);

      endURLdescriptions <-
        checkMultilingualFields(endURLdescriptions,
                                language = language);

      dateformat <-
        checkMultilingualFields(dateformat,
                                language = language,
                                classCheck = is.numeric,
                                className = "numeric");

      numberformat <-
        checkMultilingualFields(numberformat,
                                language = language,
                                classCheck = is.numeric,
                                className = "numeric");

      ###-----------------------------------------------------------------------
      ### Set all the settings
      ###-----------------------------------------------------------------------

      self$titles <- titles;
      self$sid <- sid;
      self$gsid <- gsid;
      self$admin <- admin;
      self$adminemail <- adminemail;
      self$anonymized <- anonymized;
      self$faxto <- faxto;
      self$format <- format;
      self$savetimings <- savetimings;
      self$template <- template;
      self$language <- language;
      self$additional_languages <- additional_languages;
      self$datestamp <- datestamp;
      self$usecookie <- usecookie;
      self$allowregister <- allowregister;
      self$allowsave <- allowsave;
      self$autonumber_start <- autonumber_start;
      self$autoredirect <- autoredirect;
      self$allowprev <- allowprev;
      self$printanswers <- printanswers;
      self$ipaddr <- ipaddr;
      self$refurl <- refurl;
      self$showsurveypolicynotice <- showsurveypolicynotice;
      self$publicstatistics <- 	publicstatistics;
      self$publicgraphs <- publicgraphs;
      self$listpublic <- listpublic;
      self$htmlemail <- htmlemail;
      self$sendconfirmation <- sendconfirmation;
      self$tokenanswerspersistence <- tokenanswerspersistence;
      self$assessments <- assessments;
      self$usecaptcha <- usecaptcha;
      self$usetokens <- usetokens;
      self$bounce_email <- bounce_email;
      self$emailresponseto <- emailresponseto;
      self$emailnotificationto <- emailnotificationto;
      self$tokenlength <- tokenlength;
      self$showxquestions <- showxquestions;
      self$showgroupinfo <- showgroupinfo;
      self$shownoanswer <- shownoanswer;
      self$showqnumcode <- showqnumcode;
      self$bounceprocessing <- bounceprocessing;
      self$showwelcome <- showwelcome;
      self$showprogress <- showprogress;
      self$questionindex <- questionindex;
      self$navigationdelay <- navigationdelay;
      self$nokeyboard <- nokeyboard;
      self$alloweditaftercompletion <- alloweditaftercompletion;
      self$googleanalyticsstyle <- googleanalyticsstyle;
      self$googleanalyticsapikey <- googleanalyticsapikey;

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

      titles <-
        checkMultilingualFields(titles,
                                language = self$language);

      descriptions <-
        checkMultilingualFields(descriptions,
                                language = self$language);

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
                     language = self$language,
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
    },

    ###-------------------------------------------------------------------------
    ### Export the survey as a tab separated values file
    ###-------------------------------------------------------------------------

    #' @description
    #' Export the survey as a tab separated values file (see
    #' https://manual.limesurvey.org/Tab_Separated_Value_survey_structure).
    #' @param file The filename to which to save the file.
    #' @param encoding The encoding to use
    #' @return Invisibly, the `Survey` object.
    export_to_tsv = function(file,
                             encoding = "UTF-8") {



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

