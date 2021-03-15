#' Release a LimeSurvey API session key
#'
#' This function clears the LimeSurvey API session key currently in use, effectively logging out.
#' @export
#' @examples \dontrun{
#' limer_release_session_key()
#' }
limer_release_session_key <- function() {
  limer_call_limer(method = "release_session_key")
}
