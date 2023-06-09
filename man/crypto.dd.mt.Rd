% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{crypto.dd.mt}
\alias{crypto.dd.mt}
\title{Returns messari timeseries}
\usage{
crypto.dd.mt(symbol, timeseries_id, interval = "1d", start_date, end_date)
}
\arguments{
\item{symbol}{(character length 1) Crypto symbol to check messari timeseries}

\item{timeseries_id}{(character length 1) Messari timeserie id}

\item{interval}{(character length 1) Interval frequency (possible values are: 5m, 15m, 30m, 1h, 1d, 1w)}
}
\description{
Wrapper for Python function crypto.dd.mt from OpenBB Terminal SDK
}
\examples{
crypto.dd.mt(symbol='ETH', interval='1d')
}
