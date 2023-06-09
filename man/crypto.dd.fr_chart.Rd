% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{crypto.dd.fr_chart}
\alias{crypto.dd.fr_chart}
\title{Display coin fundraising}
\usage{
crypto.dd.fr_chart(symbol, export = "", sheet_name, external_axes)
}
\arguments{
\item{symbol}{(character length 1) Crypto symbol to check coin fundraising}

\item{export}{(character length 1) Export dataframe data to csv,json,xlsx file}
}
\description{
Wrapper for Python function crypto.dd.fr_chart from OpenBB Terminal SDK
}
\examples{
crypto.dd.fr_chart(symbol='ETH')
}
