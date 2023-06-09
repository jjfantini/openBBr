% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{portfolio.metric.calmar}
\alias{portfolio.metric.calmar}
\title{Get calmar ratio}
\usage{
portfolio.metric.calmar(portfolio_engine, window = 756)
}
\arguments{
\item{portfolio_engine}{(Python type: openbb_terminal.portfolio.portfolio_engine.PortfolioEngine) PortfolioEngine class instance, this will hold transactions and perform calculations.
Use \code{portfolio.load} to create a PortfolioEngine.}

\item{window}{(integer length 1) Interval used for rolling values}
}
\description{
Wrapper for Python function portfolio.metric.calmar from OpenBB Terminal SDK
}
\examples{
portfolio.metric.calmar(window=756)
}
