% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{stocks.dps.spos}
\alias{stocks.dps.spos}
\title{Get net short position. \link{Source: Stockgrid}}
\usage{
stocks.dps.spos(symbol)
}
\arguments{
\item{symbol}{(character length 1) Stock to get data from}
}
\description{
Wrapper for Python function stocks.dps.spos from OpenBB Terminal SDK
}
\examples{
stocks.dps.spos(symbol='AMZN')
}
