% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{keys.coinbase}
\alias{keys.coinbase}
\title{Set Coinbase key}
\usage{
keys.coinbase(key, secret, passphrase, persist = FALSE, show_output = FALSE)
}
\arguments{
\item{key}{(character length 1) API key}

\item{secret}{(character length 1) API secret}

\item{passphrase}{(character length 1) Account passphrase}

\item{persist}{(logical length 1) If False, api key change will be contained to where it was changed. For example, a Jupyter notebook session.
If True, api key change will be global, i.e. it will affect terminal environment variables.
By default, False.}

\item{show_output}{(logical length 1) Display status string or not. By default, False.}
}
\description{
Wrapper for Python function keys.coinbase from OpenBB Terminal SDK
}
\examples{
keys.coinbase(persist=FALSE, show_output=FALSE)
}
