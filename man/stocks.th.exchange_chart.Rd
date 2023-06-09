% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{stocks.th.exchange_chart}
\alias{stocks.th.exchange_chart}
\title{Display current exchange trading hours.}
\usage{
stocks.th.exchange_chart(symbol)
}
\arguments{
\item{symbol}{(character length 1) Exchange symbol}
}
\description{
Wrapper for Python function stocks.th.exchange_chart from OpenBB Terminal SDK
}
\examples{
stocks.th.exchange_chart(symbol='AMZN')
}
