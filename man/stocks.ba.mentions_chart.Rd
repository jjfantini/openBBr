% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{stocks.ba.mentions_chart}
\alias{stocks.ba.mentions_chart}
\title{Plots weekly bars of stock's interest over time. other users watchlist. \link{Source: Google}.}
\usage{
stocks.ba.mentions_chart(
  symbol,
  start_date = "",
  export = "",
  sheet_name,
  external_axes
)
}
\arguments{
\item{symbol}{(character length 1) Ticker symbol}

\item{start_date}{(character length 1) Start date as YYYY-MM-DD string}

\item{export}{(character length 1) Format to export data}
}
\description{
Wrapper for Python function stocks.ba.mentions_chart from OpenBB Terminal SDK
}
\examples{
stocks.ba.mentions_chart(symbol='AMZN')
}
