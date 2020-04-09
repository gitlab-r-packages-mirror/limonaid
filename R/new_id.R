#' @export
new_id <- function(silent = limonaid::opts$get("silent")) {
  oldIdCounter <- limonaid::opts$get("idCounter");
  newIdCounter <- oldIdCounter + 1;
  limonaid::opts$set(idCounter = newIdCounter);
  if (!silent) {
    cat0("\nOld id counter was at ", oldIdCounter,
         "; returned new id of ", newIdCounter, ".\n");
  }
  return(invisible(newIdCounter));
}
