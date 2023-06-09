% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{stocks.ba.bullbear}
\alias{stocks.ba.bullbear}
\title{Gets bullbear sentiment for ticker \link{Source: stocktwits}.}
\usage{
stocks.ba.bullbear(symbol)
}
\arguments{
\item{symbol}{(character length 1) Ticker symbol to look at}
}
\description{
Wrapper for Python function stocks.ba.bullbear from OpenBB Terminal SDK
}
\examples{
stocks.ba.bullbear(symbol='AMZN')
}
