% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{crypto.ov.exmarkets}
\alias{crypto.ov.exmarkets}
\title{List markets by exchange ID \link{Source: CoinPaprika}}
\usage{
crypto.ov.exmarkets(
  exchange_id = "binance",
  symbols = "USD",
  sortby = "pair",
  ascend = TRUE
)
}
\arguments{
\item{exchange_id}{(character length 1) identifier of exchange e.g for Binance Exchange -> binance}

\item{symbols}{(character length 1) Comma separated quotes to return e.g quotes=USD,BTC}

\item{sortby}{(character length 1) Key by which to sort data}

\item{ascend}{(logical length 1) Flag to sort data ascending}
}
\description{
Wrapper for Python function crypto.ov.exmarkets from OpenBB Terminal SDK
}
\examples{
crypto.ov.exmarkets(exchange_id='binance', symbols='USD', sortby='pair', ascend=TRUE)
}
