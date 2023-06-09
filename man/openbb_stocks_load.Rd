% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/stocks.R
\name{openbb_stocks_load}
\alias{openbb_stocks_load}
\title{openbb_stocks_load}
\usage{
openbb_stocks_load(
  symbol,
  start_date = "1950-01-01",
  end_date = Sys.Date(),
  interval = 1440,
  prepost = FALSE,
  source = "YahooFinance",
  weekly = FALSE,
  monthly = FALSE,
  verbose = FALSE
)
}
\arguments{
\item{symbol}{character. Ticker to get data.}

\item{start_date}{Date. Start date to get data from with. Default: "1050-01-01".}

\item{end_date}{Date. End date to get data from with. Default: Sys.Date().}

\item{interval}{numeric. Default: 1440 - Interval (in minutes) to get data 1, 5, 15, 30, 60 or 1440 (24hrs).}

\item{prepost}{logical. Default: F - Append Pre/Post hours data.}

\item{source}{string. Default: YahooFinance - Other sources:
AlphaVantage (https://www.alphavantage.co/documentation/)
Eod Historical Data (https://eodhistoricaldata.com/financial-apis/)}

\item{weekly}{logical. Default: F.}

\item{monthly}{logical. Default: F.}

\item{verbose}{logical. Default: F.}
}
\description{
a wrapper for openbb.stocks.load() function in python
}
