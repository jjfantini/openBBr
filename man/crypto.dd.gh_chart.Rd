% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{crypto.dd.gh_chart}
\alias{crypto.dd.gh_chart}
\title{Returns a list of github activity for a given coin and time interval.}
\usage{
crypto.dd.gh_chart(
  symbol,
  start_date,
  dev_activity = FALSE,
  end_date,
  interval = "1d",
  export = "",
  sheet_name,
  external_axes
)
}
\arguments{
\item{symbol}{(character length 1) Crypto symbol to check github activity}

\item{dev_activity}{(logical length 1) Whether to filter only for development activity}

\item{interval}{(character length 1) Interval frequency (some possible values are: 1h, 1d, 1w)}

\item{export}{(character length 1) Export dataframe data to csv,json,xlsx file}
}
\description{
Wrapper for Python function crypto.dd.gh_chart from OpenBB Terminal SDK
}
\examples{
crypto.dd.gh_chart(symbol='ETH', dev_activity=FALSE, interval='1d')
}
