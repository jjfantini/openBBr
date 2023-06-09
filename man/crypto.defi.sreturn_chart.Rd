% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{crypto.defi.sreturn_chart}
\alias{crypto.defi.sreturn_chart}
\title{Plots terra blockchain staking returns history \link{Source: https://fcd.terra.dev/swagger}}
\usage{
crypto.defi.sreturn_chart(limit = 90, export = "", sheet_name, external_axes)
}
\arguments{
\item{limit}{(integer length 1) Number of records to display}

\item{export}{(character length 1) Export dataframe data to csv,json,xlsx file}
}
\description{
Wrapper for Python function crypto.defi.sreturn_chart from OpenBB Terminal SDK
}
\examples{
crypto.defi.sreturn_chart(limit=90)
}
