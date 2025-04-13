#' Get all group rows from a LimeSurvey survey dataframe
#'
#' @param data The LimeSurvey survey dataframe.
#'
#' @return A dataframe with the rows.
#'
#' @examples ### Add
#' @export
ls_tsv_get_group_rows <- function(data) {

  return(ls_tsv_get_rows(data,
                         class = "G"));

}

