% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{stocks.options.info}
\alias{stocks.options.info}
\title{Scrape barchart for options info}
\usage{
stocks.options.info(symbol)
}
\arguments{
\item{symbol}{(character length 1) Stock ticker symbol}
}
\description{
Wrapper for Python function stocks.options.info from OpenBB Terminal SDK
}
\examples{
stocks.options.info(symbol='AMZN')
}
