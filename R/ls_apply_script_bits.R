ls_apply_script_bits <- function(data,
                                 scriptBits,
                                 setVarNames = TRUE,
                                 setLabels = TRUE,
                                 convertToCharacter = FALSE,
                                 convertToFactor = FALSE,
                                 categoricalQuestions = NULL,
                                 massConvertToNumeric = TRUE,
                                 silent=limonaid::opts$get("silent")) {

  if (!is.data.frame(data)) {
    stop("`data` must be a data.frame, but has class `", class(data), "`.");
  }
  if (!("lsScriptBits" %in% class(scriptBits))) {
    stop("`scriptBits` must have class `scriptBits`, but has class ",
         vecTxt(class(scriptBits), useQuote="`"), ".");
  }

  varNamesScript <- scriptBits$varNamesScript;
  varLabelsScript <- scriptBits$varLabelsScript;
  toCharScript <- scriptBits$toCharScript;
  toFactorScript <- scriptBits$toFactorScript;

  if (setVarNames) {
    if (!silent) {
      cat0("\nSetting variable names.");
    }
    eval(parse(text=varNamesScript));
  }

  if (convertToCharacter) {
    if (!silent) {
      cat0("\nConverting columns to character.");
    }
    eval(parse(text=toCharScript));
  }

  if (convertToFactor || (!is.null(categoricalQuestions))) {

    if (!silent) {
      cat0("\nConverting columns to factors.");
    }

    if (massConvertToNumeric) {
      data <- massConvertToNumeric(data);
    }

    if (!is.null(categoricalQuestions)) {
      if (setVarNames) {
        varNames <- names(data);
      } else {
        stop("You can't set setVarNames to FALSE and also set ",
             "categoricalQuestions to anything else than NULL, ",
             "because the content of categoricalQuestions should ",
             "be the LimeSurvey variables names!");
      }
      toFactorScript <- unlist(lapply(as.list(categoricalQuestions),
                                      function(x, string=toFactorScript,
                                               varNms=varNames) {
                                        return(grep(paste0("data\\[, ",
                                                           which(varNms==x),
                                                           "\\] <-"),
                                                    string, value=TRUE));
                                      }));
    }

    eval(parse(text=toFactorScript));

  }

  ### Labels are set as last action, because other actions
  ### sometimes erase attributes
  if (setLabels) {
    if (!silent) {
      cat0("\nSetting variable labels.");
    }
    ### This is the default attribute
    eval(parse(text=varLabelsScript));
    ### Also apply to `labels`, to be consistent with e.g. haven etc
    varLabelsScript <- gsub("variable\\.labels",
                            "label",
                            varLabelsScript);
    eval(parse(text=varLabelsScript));
  }

  return(data);


}
