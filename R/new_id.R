#' @export
 new_id <- function(type,
                    silent = limonaid::opts$get("silent")) {
  if (!(type %in% c("question", "group", "answer"))) {
    stop("As 'type', you passed ", vecTxtQ(type), ", which ",
         "is an illegal value.");
  }
  idCounterName <- paste0(type, "_idCounter");
  oldIdCounter <- limonaid::opts$get(idCounterName);
  newIdCounter <- oldIdCounter + 1;
  do.call(limonaid::opts$set,
          stats::setNames(list(newIdCounter),
                          nm = idCounterName));
  if (!silent) {
    cat0("\nOld id counter was at ", oldIdCounter,
         "; returned new id of ", newIdCounter, ".\n");
  }
  return(invisible(newIdCounter));
}
