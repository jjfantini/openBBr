% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{portfolio.show}
\alias{portfolio.show}
\title{Get portfolio transactions}
\usage{
portfolio.show(portfolio_engine)
}
\arguments{
\item{portfolio_engine}{(Python type: openbb_terminal.portfolio.portfolio_engine.PortfolioEngine) PortfolioEngine class instance, this will hold transactions and perform calculations.
Use \code{portfolio.load} to create a PortfolioEngine.}
}
\description{
Wrapper for Python function portfolio.show from OpenBB Terminal SDK
}
