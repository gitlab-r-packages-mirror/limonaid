% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/limer_get_participants.R
\name{limer_get_participants}
\alias{limer_get_participants}
\title{Export list of participants from a LimeSurvey survey}
\usage{
limer_get_participants(iSurveyID, iStart, iLimit, bUnused, aAttributes)
}
\arguments{
\item{iSurveyID}{\dots}

\item{iStart}{\dots}

\item{iLimit}{\dots}

\item{bUnused}{\dots}

\item{aAttributes}{\dots}
}
\description{
This function exports and downloads the list of participants from a LimeSurvey survey.
}
\examples{
\dontrun{
limer_get_participants(12345, iStart=1, iLimit=10, bUnused=FALSE,
                                   aAttributes=c('attribute_1','attribute_2'))
limer_get_participants(12345, iStart=1, iLimit=10, bUnused=FALSE, aAttributes=FALSE)
}
}
