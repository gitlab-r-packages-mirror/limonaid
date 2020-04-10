
###-----------------------------------------------------------------------------
### Class basics
###-----------------------------------------------------------------------------

survey <-
  R6::R6Class("survey",
              public = list(
                name = NULL,
                primaryLanguage = "en",
                groups = list(),
                initialize = function(name,
                                      primaryLanguage) {
                  self$name <- name;
                  self$primaryLanguage <- primaryLanguage;
                }
              ));

###-----------------------------------------------------------------------------
### Add a question group
###-----------------------------------------------------------------------------

survey$set(
  "public",
  "add_group",
  function(title,
           description = "",
           relevance = 1,
           random_group = "",
           language = self$primaryLanguage) {
    if (title %in% names(self$groups)) {
      stop("This survey already has a group with title '",
           title,
           "'!");
    } else {

      thisGroup <-
        list(titles = stats::setNames(title,
                                      nm = language),
             descriptions = stats::setNames(description,
                                            nm = language),
             relevance = relevance,
             random_group = random_group);

      self$groups <-
        stats::setNames(c(self$groups,
                          list(thisGroup)),
                        nm = c(names(self$groups),
                               name));

    }
  });

###-----------------------------------------------------------------------------
### Add a question
###-----------------------------------------------------------------------------

survey$set(
  "public",
  "add_question",
  function(group,
           code,
           text = "",
           relevance = 1,
#           random_group = "",
           language = self$primaryLanguage) {
    if (name %in% names(self$groups)) {
      stop("This survey already has a question with code '",
           code,
           "'!");
    } else {

      thisGroup <-
        list(names = stats::setNames(name,
                                     nm = language),
             descriptions = stats::setNames(description,
                                            nm = language),
             relevance = relevance,
             random_group = random_group);

      self$groups <-
        stats::setNames(c(self$groups,
                          list(thisGroup)),
                        nm = c(names(self$groups),
                               name));

    }
  });


ls <- survey$new(name = "bla",
                 primaryLanguage = "en");

