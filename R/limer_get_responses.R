#' Export data from a LimeSurvey survey
#'
#' This function exports and downloads data from a LimeSurvey survey.
#'
#' @param encoding_limerCall The encoding to pass to
#' the [limonaid::limer_call_limer()] function.
#' @param encoding_txtCon The encoding to pass to
#' [limonaid::limer_base64_to_df()].
#'
#' @param iSurveyID The LimeSurvey survey identifier (the `sid`, usually
#' 6 digits long).
#' @param sDocumentType \dots
#' @param sLanguageCode \dots
#' @param sCompletionStatus \dots
#' @param sHeadingType \dots
#' @param sResponseType \dots
#' @param \dots Further arguments to \code{\link{limer_call_limer}}.
#' @export
#' @examples \dontrun{
#' limer_get_responses(12345)
#' }

limer_get_responses <- function(iSurveyID,
                                sDocumentType = "csv",
                                sLanguageCode = NULL,
                                sCompletionStatus = "complete",
                                sHeadingType = "code",
                                sResponseType = "long",
                                encoding_limerCall=NULL,
                                encoding_txtCon=NULL,
                                ...) {

  ### Put all the function's arguments in a list to then be passed to call_limer()
  params <- as.list(environment());
  dots <- list(...);
  if(length(dots) > 0) params <- append(params,dots);
  # print(params) # uncomment to debug the params

  results <-
    limer_call_limer(
      method = "export_responses",
      params = params,
      encoding=encoding_limerCall
    );

  return(
    limer_base64_to_df(
      unlist(results),
      encoding=encoding_txtCon
    )
  );

}
