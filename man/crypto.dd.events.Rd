% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{crypto.dd.events}
\alias{crypto.dd.events}
\title{Get all events related to given coin like conferences, start date of futures trading etc.}
\usage{
crypto.dd.events(symbol = "BTC", sortby = "date", ascend = FALSE)
}
\arguments{
\item{symbol}{(character length 1) Cryptocurrency symbol (e.g. BTC)}

\item{sortby}{(character length 1) Key by which to sort data. Every column name is valid
(see for possible values:
https://api.coinpaprika.com/docs#tag/Coins/paths/~1coins~1\%7Bcoin_id\%7D~1events/get).}

\item{ascend}{(logical length 1) Flag to sort data ascending}
}
\description{
Wrapper for Python function crypto.dd.events from OpenBB Terminal SDK
}
\examples{
crypto.dd.events(symbol='BTC', sortby='date', ascend=FALSE)
}
