% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{stocks.gov.qtrcontracts_chart}
\alias{stocks.gov.qtrcontracts_chart}
\title{Quarterly contracts \link{Source: quiverquant.com}}
\usage{
stocks.gov.qtrcontracts_chart(
  analysis = "total",
  limit = 5,
  raw = FALSE,
  export = "",
  sheet_name,
  external_axes
)
}
\arguments{
\item{analysis}{(character length 1) Analysis to perform.  Either 'total', 'upmom' 'downmom'}

\item{limit}{(integer length 1) Number to show}

\item{raw}{(logical length 1) Flag to display raw data}

\item{export}{(character length 1) Format to export data}
}
\description{
Wrapper for Python function stocks.gov.qtrcontracts_chart from OpenBB Terminal SDK
}
\examples{
stocks.gov.qtrcontracts_chart(analysis='total', limit=5, raw=FALSE)
}
