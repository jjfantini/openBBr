% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{stocks.disc.fipo}
\alias{stocks.disc.fipo}
\title{Future IPOs dates. \link{Source: Finnhub}}
\usage{
stocks.disc.fipo(num_days_ahead = 5, end_date)
}
\arguments{
\item{num_days_ahead}{(integer length 1) Number of days to look ahead for IPOs dates}
}
\description{
Wrapper for Python function stocks.disc.fipo from OpenBB Terminal SDK
}
\examples{
stocks.disc.fipo(num_days_ahead=5)
}
