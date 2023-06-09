% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{forecast.theta}
\alias{forecast.theta}
\title{Performs Theta forecasting}
\usage{
forecast.theta(
  data,
  target_column = "close",
  seasonal = "M",
  seasonal_periods = 7,
  n_predict = 5,
  start_window = 0.85,
  forecast_horizon = 5,
  metric = "mape"
)
}
\arguments{
\item{target_column}{(character length 1) Target column to forecast. Defaults to "close".}

\item{seasonal}{(character length 1) Seasonal component.  One of \link{N, A, M}
Defaults to MULTIPLICATIVE.}

\item{seasonal_periods}{(integer length 1) Number of seasonal periods in a year
If not set, inferred from frequency of the series.}

\item{n_predict}{(integer length 1) Number of days to forecast}

\item{start_window}{(numeric length 1) Size of sliding window from start of timeseries and onwards}

\item{forecast_horizon}{(integer length 1) Number of days to forecast when backtesting and retraining historical data}

\item{metric}{(character length 1) Metric to use when backtesting and retraining historical data. Defaults to "mape".}
}
\description{
Wrapper for Python function forecast.theta from OpenBB Terminal SDK
}
\examples{
forecast.theta(target_column='close', seasonal='M', seasonal_periods=7, n_predict=5, start_window=0.85, forecast_horizon=5)
}
