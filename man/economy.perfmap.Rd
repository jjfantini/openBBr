% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{economy.perfmap}
\alias{economy.perfmap}
\title{Opens Finviz map website in a browser. \link{Source: Finviz}}
\usage{
economy.perfmap(period = "1d", map_filter = "sp500")
}
\arguments{
\item{period}{(character length 1) Performance period. Available periods are 1d, 1w, 1m, 3m, 6m, 1y.}
}
\description{
Wrapper for Python function economy.perfmap from OpenBB Terminal SDK
}
\examples{
economy.perfmap(period='1d')
}
