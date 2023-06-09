% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{economy.index}
\alias{economy.index}
\title{Get data on selected indices over time \link{Source: Yahoo Finance}}
\usage{
economy.index(
  indices,
  interval = "1d",
  start_date,
  end_date,
  column = "Adj Close",
  returns = FALSE
)
}
\arguments{
\item{indices}{(Python type: list) A list of indices to get data. Available indices can be accessed through economy.available_indices().}

\item{interval}{(character length 1) Valid intervals: 1m,2m,5m,15m,30m,60m,90m,1h,1d,5d,1wk,1mo,3mo
Intraday data cannot extend last 60 days}

\item{column}{(character length 1) Which column to load in, by default "Adjusted Close".}

\item{returns}{(logical length 1) Flag to show cumulative returns on index}
}
\description{
Wrapper for Python function economy.index from OpenBB Terminal SDK
}
\examples{
economy.index(interval='1d', column='Adj Close', returns=FALSE)
}
