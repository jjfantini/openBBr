% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{forecast.expo}
\alias{forecast.expo}
\title{Performs Probabilistic Exponential Smoothing forecasting}
\usage{
forecast.expo(
  data,
  target_column = "close",
  trend = "A",
  seasonal = "A",
  seasonal_periods = 7,
  dampen = "F",
  n_predict = 5,
  start_window = 0.85,
  forecast_horizon = 5,
  metric = "mape"
)
}
\arguments{
\item{target_column}{(character length 1) Target column to forecast. Defaults to "close".}

\item{trend}{(character length 1) Trend component.  One of \link{N, A, M}
Defaults to ADDITIVE.}

\item{seasonal}{(character length 1) Seasonal component.  One of \link{N, A, M}
Defaults to ADDITIVE.}

\item{seasonal_periods}{(integer length 1) Number of seasonal periods in a year (7 for daily data)
If not set, inferred from frequency of the series.}

\item{dampen}{(character length 1) Dampen the function}

\item{n_predict}{(integer length 1) Number of days to forecast}

\item{start_window}{(numeric length 1) Size of sliding window from start of timeseries and onwards}

\item{forecast_horizon}{(integer length 1) Number of days to forecast when backtesting and retraining historical}

\item{metric}{(character length 1) Metric to use for backtesting. Defaults to MAPE.}
}
\description{
Wrapper for Python function forecast.expo from OpenBB Terminal SDK
}
\examples{
forecast.expo(target_column='close', trend='A', seasonal='A', seasonal_periods=7, dampen='F', n_predict=5, start_window=0.85, forecast_horizon=5)
}
