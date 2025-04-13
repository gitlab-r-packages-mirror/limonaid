#' Mail registered participant
#'
#' This function was
#' adapted by Gjalt-Jorn Peters from a function originally written by Andrew
#' Heiss.
#'
#' @param iSurveyID \dots
#' @param tid \dots
#' @export
#' @examples \dontrun{
#' limonaid::mail_registered_participant(iSurveyID = 123456, tid = 2)
#' }
mail_registered_participant <- function(iSurveyID, tid) {

  limer_call_limer(method = "mail_registered_participants", params = list("iSurveyID" = iSurveyID, "overrideAllConditions" = list("0" = paste0("tid = ", tid))))

}
