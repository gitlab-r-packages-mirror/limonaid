% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/limer_release_session_key.R
\name{limer_release_session_key}
\alias{limer_release_session_key}
\title{Release a LimeSurvey API session key}
\usage{
limer_release_session_key()
}
\description{
This function clears the LimeSurvey API session key currently in use,
effectively logging out. This function was
adapted by Gjalt-Jorn Peters from a function originally written by Andrew
Heiss.
}
\examples{
\dontrun{
limesurvey::limer_release_session_key()
}
}
