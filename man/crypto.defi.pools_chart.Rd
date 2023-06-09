% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{crypto.defi.pools_chart}
\alias{crypto.defi.pools_chart}
\title{Prints table showing uniswap pools by volume.}
\usage{
crypto.defi.pools_chart(
  limit = 20,
  sortby = "volumeUSD",
  ascend = TRUE,
  export = "",
  sheet_name
)
}
\arguments{
\item{limit}{(integer length 1) Number of records to display}

\item{sortby}{(character length 1) Key by which to sort data. The table can be sorted by every of its columns
(see https://bit.ly/3ORagr1 then press ctrl-enter or execute the query).}

\item{ascend}{(logical length 1) Flag to sort data descending}

\item{export}{(character length 1) Export dataframe data to csv,json,xlsx file}
}
\description{
Wrapper for Python function crypto.defi.pools_chart from OpenBB Terminal SDK
}
\examples{
crypto.defi.pools_chart(limit=20, sortby='volumeUSD', ascend=TRUE)
}
