# #' @export
# reset_id <- function(type,
#                      silent = limonaid::opts$get("silent")) {
#   if (!(type %in% c("question", "group", "answer"))) {
#     stop("As 'type', you passed ", vecTxtQ(type), ", which ",
#          "is an illegal value.");
#   }
#   idCounterName <- paste0(type, "_idCounter");
#   oldIdCounter <- limonaid::opts$get(idCounterName);
#   newIdCounter <- 1;
#   do.call(limonaid::opts$set,
#           stats::setNames(list(newIdCounter),
#                           nm = idCounterName));
#   if (!silent) {
#     cat0("\nOld ", type, " id counter was at ", oldIdCounter,
#          "; reset it to 1.\n");
#   }
#   return(invisible(newIdCounter));
# }
