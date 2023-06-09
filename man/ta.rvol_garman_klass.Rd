% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{ta.rvol_garman_klass}
\alias{ta.rvol_garman_klass}
\title{Garman-Klass volatility extends Parkinson volatility by taking into account the opening and closing price.}
\usage{
ta.rvol_garman_klass(
  data,
  window = 30,
  trading_periods = 252,
  is_crypto = FALSE,
  clean
)
}
\arguments{
\item{data}{(data.frame) Dataframe of OHLC prices.}

\item{window}{(integer length 1) Length of window to calculate standard deviation.}

\item{trading_periods}{(integer length 1) Number of trading periods in a year.}

\item{is_crypto}{(logical length 1) If true, trading_periods is defined as 365.}

\item{clean}{(Python type: inspect._empty) Whether to clean the data or not by dropping NaN values.}
}
\description{
Wrapper for Python function ta.rvol_garman_klass from OpenBB Terminal SDK
}
