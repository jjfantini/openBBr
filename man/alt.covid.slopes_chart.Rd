% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{alt.covid.slopes_chart}
\alias{alt.covid.slopes_chart}
\title{Prints table showing countries with the highest case slopes.}
\usage{
alt.covid.slopes_chart(
  days_back = 30,
  limit = 10,
  threshold = 10000,
  ascend = FALSE,
  export = "",
  sheet_name
)
}
\arguments{
\item{days_back}{(integer length 1) Number of historical days to get slope for}

\item{limit}{(integer length 1) Number to show in table}

\item{threshold}{(integer length 1) Threshold for total cases over period}

\item{ascend}{(logical length 1) Flag to sort in ascending order}

\item{export}{(character length 1) Format to export data}
}
\description{
Wrapper for Python function alt.covid.slopes_chart from OpenBB Terminal SDK
}
\examples{
alt.covid.slopes_chart(days_back=30, limit=10, ascend=FALSE, threshold=10000)
}
