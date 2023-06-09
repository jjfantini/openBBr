% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{economy.treasury_chart}
\alias{economy.treasury_chart}
\title{Display U.S. Treasury rates \link{Source: EconDB}}
\usage{
economy.treasury_chart(
  instruments,
  maturities,
  frequency = "monthly",
  start_date = "1900-01-01",
  end_date,
  raw = FALSE,
  external_axes,
  export = "",
  sheet_name
)
}
\arguments{
\item{frequency}{(character length 1) Frequency of the data, this can be daily, weekly, monthly or annually}

\item{start_date}{(character length 1) Starting date, format "YEAR-MONTH-DAY", i.e. 2010-12-31.}

\item{raw}{(logical length 1) Whether to display the raw output.}

\item{export}{(character length 1) Export data to csv,json,xlsx or png,jpg,pdf,svg file}
}
\description{
Wrapper for Python function economy.treasury_chart from OpenBB Terminal SDK
}
\examples{
economy.treasury_chart(frequency='monthly', start_date='1900-01-01', raw=FALSE)
}
