% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{etf.load}
\alias{etf.load}
\title{Load a symbol to perform analysis using the string above as a template.}
\usage{
etf.load(
  symbol,
  start_date,
  interval = 1440,
  end_date,
  prepost = FALSE,
  source = "YahooFinance",
  weekly = FALSE,
  monthly = FALSE,
  verbose = TRUE
)
}
\arguments{
\item{symbol}{(character length 1) Ticker to get data}

\item{interval}{(integer length 1) Interval (in minutes) to get data 1, 5, 15, 30, 60 or 1440}

\item{prepost}{(logical length 1) Pre and After hours data}

\item{source}{(character length 1) Source of data extracted}

\item{weekly}{(logical length 1) Flag to get weekly data}

\item{monthly}{(logical length 1) Flag to get monthly data}

\item{verbose}{(logical length 1) Display verbose information on what was the symbol that was loaded}
}
\description{
Wrapper for Python function etf.load from OpenBB Terminal SDK
}
\examples{
etf.load(symbol='AMZN', interval=1440, prepost=FALSE, source='YahooFinance', weekly=FALSE, monthly=FALSE, verbose=TRUE)
}
