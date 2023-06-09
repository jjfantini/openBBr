% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{stocks.options.vsurf_chart}
\alias{stocks.options.vsurf_chart}
\title{Display vol surface}
\usage{
stocks.options.vsurf_chart(
  symbol,
  export = "",
  sheet_name,
  z = "IV",
  external_axes
)
}
\arguments{
\item{symbol}{(character length 1) Ticker symbol to get surface for}

\item{export}{(character length 1) Format to export data}

\item{z}{(character length 1) The variable for the Z axis}
}
\description{
Wrapper for Python function stocks.options.vsurf_chart from OpenBB Terminal SDK
}
\examples{
stocks.options.vsurf_chart(symbol='AMZN', z='IV')
}
