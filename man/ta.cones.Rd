% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{ta.cones}
\alias{ta.cones}
\title{Returns a DataFrame of realized volatility quantiles.}
\usage{
ta.cones(
  data,
  lower_q = 0.25,
  upper_q = 0.75,
  is_crypto = FALSE,
  model = "STD"
)
}
\arguments{
\item{data}{(data.frame) DataFrame of the OHLC data.}

\item{lower_q}{(numeric length 1) The lower quantile to calculate the realized volatility over time for.}

\item{upper_q}{(numeric length 1) The upper quantile to calculate the realized volatility over time for.}

\item{is_crypto}{(logical length 1) If true, volatility is calculated for 365 days instead of 252.}

\item{model}{(character length 1) The model to use for volatility calculation. Choices are:
\link{"STD", "Parkinson", "Garman-Klass", "Hodges-Tompkins", "Rogers-Satchell", "Yang-Zhang"}}
}
\description{
Wrapper for Python function ta.cones from OpenBB Terminal SDK
}
