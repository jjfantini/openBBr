% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{stocks.options.voi}
\alias{stocks.options.voi}
\title{Plot volume and open interest}
\usage{
stocks.options.voi(
  chain,
  current_price,
  symbol,
  expiry,
  min_sp = -1,
  max_sp = -1,
  raw = FALSE,
  export = "",
  sheet_name,
  external_axes
)
}
\arguments{
\item{chain}{(data.frame) Dataframe with options chain}

\item{current_price}{(numeric length 1) Current price of selected symbol}

\item{symbol}{(character length 1) Stock ticker symbol}

\item{expiry}{(character length 1) Option expiration}

\item{min_sp}{(numeric length 1) Min strike price}

\item{max_sp}{(numeric length 1) Max strike price}

\item{export}{(character length 1) Format for exporting data}
}
\description{
Wrapper for Python function stocks.options.voi from OpenBB Terminal SDK
}
