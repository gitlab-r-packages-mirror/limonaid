#' @export
reset_id <- function(silent = limonaid::opts$get("silent")) {
  oldIdCounter <- limonaid::opts$get("idCounter");
  newIdCounter <- 1;
  limonaid::opts$set(idCounter = newIdCounter);
  if (!silent) {
    cat0("\nOld id counter was at ", oldIdCounter,
         "; reset it to 1.\n");
  }
  return(invisible(newIdCounter));
}
