% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{crypto.defi.ldapps_chart}
\alias{crypto.defi.ldapps_chart}
\title{Prints table showing information about listed DeFi protocols, their current TVL and changes to it in}
\usage{
crypto.defi.ldapps_chart(
  sortby,
  limit = 20,
  ascend = FALSE,
  description = FALSE,
  export = "",
  sheet_name
)
}
\arguments{
\item{sortby}{(character length 1) Key by which to sort data}

\item{limit}{(integer length 1) Number of records to display}

\item{ascend}{(logical length 1) Flag to sort data descending}

\item{description}{(logical length 1) Flag to display description of protocol}

\item{export}{(character length 1) Export dataframe data to csv,json,xlsx file}
}
\description{
Wrapper for Python function crypto.defi.ldapps_chart from OpenBB Terminal SDK
}
\examples{
crypto.defi.ldapps_chart(limit=20, ascend=FALSE, description=FALSE)
}
