% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{crypto.ov.globe}
\alias{crypto.ov.globe}
\title{Get global crypto market data.}
\usage{
crypto.ov.globe(source = "CoinGecko")
}
\arguments{
\item{source}{(character length 1) Source of data, by default "CoinGecko"}
}
\description{
Wrapper for Python function crypto.ov.globe from OpenBB Terminal SDK
}
\examples{
crypto.ov.globe(source='CoinGecko')
}
