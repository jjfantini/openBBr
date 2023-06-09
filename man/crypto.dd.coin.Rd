% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{crypto.dd.coin}
\alias{crypto.dd.coin}
\title{Get coin by id \link{Source: CoinPaprika}}
\usage{
crypto.dd.coin(symbol = "eth-ethereum")
}
\arguments{
\item{symbol}{(character length 1) id of coin from coinpaprika e.g. Ethereum - > 'eth-ethereum'}
}
\description{
Wrapper for Python function crypto.dd.coin from OpenBB Terminal SDK
}
\examples{
crypto.dd.coin(symbol='eth-ethereum')
}
