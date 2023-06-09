% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{portfolio.rsharpe}
\alias{portfolio.rsharpe}
\title{Get rolling sharpe ratio}
\usage{
portfolio.rsharpe(portfolio_engine, risk_free_rate = 0, window = "1y")
}
\arguments{
\item{risk_free_rate}{(numeric length 1) Risk free rate}

\item{window}{(character length 1) Rolling window to use
Possible options: mtd, qtd, ytd, 1d, 5d, 10d, 1m, 3m, 6m, 1y, 3y, 5y, 10y}
}
\description{
Wrapper for Python function portfolio.rsharpe from OpenBB Terminal SDK
}
\examples{
portfolio.rsharpe(risk_free_rate=0, window='1y')
}
