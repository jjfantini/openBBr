% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{crypto.onchain.ttcp}
\alias{crypto.onchain.ttcp}
\title{Get most traded crypto pairs on given decentralized exchange in chosen time period.}
\usage{
crypto.onchain.ttcp(
  network = "ethereum",
  exchange = "Uniswap",
  limit = 90,
  sortby = "tradeAmount",
  ascend = TRUE
)
}
\arguments{
\item{network}{(character length 1) EVM network. One from list: bsc (binance smart chain), ethereum or matic}

\item{exchange}{(character length 1) Decentralized exchange name}

\item{limit}{(integer length 1) Number of days taken into calculation account.}

\item{sortby}{(character length 1) Key by which to sort data}

\item{ascend}{(logical length 1) Flag to sort data ascending}
}
\description{
Wrapper for Python function crypto.onchain.ttcp from OpenBB Terminal SDK
}
\examples{
crypto.onchain.ttcp(network='ethereum', exchange='Uniswap', limit=90, sortby='tradeAmount', ascend=TRUE)
}
