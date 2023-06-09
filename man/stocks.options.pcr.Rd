% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{stocks.options.pcr}
\alias{stocks.options.pcr}
\title{Gets put call ratio over last time window \link{Source: AlphaQuery.com}}
\usage{
stocks.options.pcr(symbol, window = 30, start_date)
}
\arguments{
\item{symbol}{(character length 1) Ticker symbol to look for}

\item{window}{(integer length 1) Window to consider, by default 30}
}
\description{
Wrapper for Python function stocks.options.pcr from OpenBB Terminal SDK
}
\examples{
stocks.options.pcr(symbol='AMZN', window=30)
}
