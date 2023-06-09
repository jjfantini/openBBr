% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{economy.treasury}
\alias{economy.treasury}
\title{Get U.S. Treasury rates \link{Source: EconDB}}
\usage{
economy.treasury(
  instruments,
  maturities,
  frequency = "monthly",
  start_date = "1900-01-01",
  end_date
)
}
\arguments{
\item{frequency}{(character length 1) Frequency of the data, this can be annually, monthly, weekly or daily.}

\item{start_date}{(character length 1) Starting date, format "YEAR-MONTH-DAY", i.e. 2010-12-31.}
}
\description{
Wrapper for Python function economy.treasury from OpenBB Terminal SDK
}
\examples{
economy.treasury(frequency='monthly', start_date='1900-01-01')
}
