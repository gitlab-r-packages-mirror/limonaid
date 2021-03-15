#' mail_registered_participant
#'
#' mail_registered_participant
#'
#' @param iSurveyID \dots
#' @param tid \dots
#' @export
#' @examples \dontrun{
#' limer::mail_registered_participant(iSurveyID = 123456, tid = 2)
#' }
mail_registered_participant <- function(iSurveyID, tid) {

  limer_call_limer(method = "mail_registered_participants", params = list("iSurveyID" = iSurveyID, "overrideAllConditions" = list("0" = paste0("tid = ", tid))))

}
