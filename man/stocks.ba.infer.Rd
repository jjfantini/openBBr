% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{stocks.ba.infer}
\alias{stocks.ba.infer}
\title{Load tweets from twitter API and analyzes using VADER.}
\usage{
stocks.ba.infer(symbol, limit = 100, start_date, end_date)
}
\arguments{
\item{symbol}{(character length 1) Ticker symbol to search twitter for}

\item{limit}{(integer length 1) Number of tweets to analyze}
}
\description{
Wrapper for Python function stocks.ba.infer from OpenBB Terminal SDK
}
\examples{
stocks.ba.infer(symbol='AMZN', limit=100)
}
