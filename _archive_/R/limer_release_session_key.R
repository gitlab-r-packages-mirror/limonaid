#' Release a LimeSurvey API session key
#'
#' This function clears the LimeSurvey API session key currently in use,
#' effectively logging out. This function was
#' adapted by Gjalt-Jorn Peters from a function originally written by Andrew
#' Heiss.
#'
#' @export
#' @examples \dontrun{
#' limesurvey::limer_release_session_key()
#' }
limer_release_session_key <- function() {
  limer_call_limer(method = "release_session_key")
}
