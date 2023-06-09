% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{stocks.fa.divs}
\alias{stocks.fa.divs}
\title{Get historical dividend for ticker}
\usage{
stocks.fa.divs(symbol)
}
\arguments{
\item{symbol}{(character length 1) Ticker symbol to get dividend for}
}
\description{
Wrapper for Python function stocks.fa.divs from OpenBB Terminal SDK
}
\examples{
stocks.fa.divs(symbol='AMZN')
}
