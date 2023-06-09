% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{economy.macro_chart}
\alias{economy.macro_chart}
\title{Show the received macro data about a company \link{Source: EconDB}}
\usage{
economy.macro_chart(
  parameters,
  countries,
  transform = "",
  start_date = "1900-01-01",
  end_date,
  symbol = "",
  raw = FALSE,
  external_axes,
  export = "",
  sheet_name
)
}
\arguments{
\item{transform}{(character length 1) select data transformation from:
'' - no transformation
'TPOP' - total percentage change on period,
'TOYA' - total percentage since 1 year ago,
'TUSD' - level USD,
'TPGP' - Percentage of GDP,
'TNOR' - Start = 100}

\item{start_date}{(character length 1) The starting date, format "YEAR-MONTH-DAY", i.e. 2010-12-31.}

\item{symbol}{(character length 1) In what currency you wish to convert all values.}

\item{raw}{(logical length 1) Whether to display the raw output.}

\item{export}{(character length 1) Export data to csv,json,xlsx or png,jpg,pdf,svg file}
}
\description{
Wrapper for Python function economy.macro_chart from OpenBB Terminal SDK
}
\examples{
economy.macro_chart(start_date='1900-01-01', raw=FALSE)
}
