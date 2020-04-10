#' @export

# ls <- limonaid::ls_read_tsv(system.file("extdata",
#                                         "export-of-minimal-survey-as-tsv.txt",
#                                         package = "limonaid"));

ls_tsv_question_row <- function(questioncode,
                                text,
                                id=NULL,
                                type.scale = "L",
                                relevance = 1,
                                language = "en",
                                mandatory = "N",
                                other = "N",
                                same_default = 1,
                                cssclass = "",
                                hide_tip = 1,
                                silent = limonaid::opts$get("silent")) {
  if (is.null(id)) {
    id <- new_id(silent = silent);
  }

  class = "Q";

  res <- as.list(environment());
  res$silent <- NULL;
  res <- as.data.frame(res);

  return(res);

}
