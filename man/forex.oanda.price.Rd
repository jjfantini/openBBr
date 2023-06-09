% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{forex.oanda.price}
\alias{forex.oanda.price}
\title{Request price for a forex pair.}
\usage{
forex.oanda.price(accountID = "REPLACE_ME", instrument)
}
\arguments{
\item{accountID}{(character length 1) Oanda account ID, by default cfg.OANDA_ACCOUNT}
}
\description{
Wrapper for Python function forex.oanda.price from OpenBB Terminal SDK
}
\examples{
forex.oanda.price(accountID='REPLACE_ME')
}
