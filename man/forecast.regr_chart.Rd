% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{forecast.regr_chart}
\alias{forecast.regr_chart}
\title{Display Regression Forecasting}
\usage{
forecast.regr_chart(
  data,
  target_column = "close",
  dataset_name = "",
  n_predict = 5,
  past_covariates,
  train_split = 0.85,
  forecast_horizon = 5,
  output_chunk_length = 5,
  lags,
  export = "",
  sheet_name,
  residuals = FALSE,
  forecast_only = FALSE,
  start_date,
  end_date,
  naive = FALSE,
  explainability_raw = FALSE,
  export_pred_raw = FALSE,
  metric = "mape",
  external_axes
)
}
\arguments{
\item{target_column}{(character length 1) Target column to forecast. Defaults to "close".}

\item{dataset_name}{(character length 1) The name of the ticker to be predicted}

\item{n_predict}{(integer length 1) Days to predict. Defaults to 5.}

\item{train_split}{(numeric length 1) Train/val split. Defaults to 0.85.}

\item{forecast_horizon}{(integer length 1) Forecast horizon when performing historical forecasting. Defaults to 5.}

\item{output_chunk_length}{(integer length 1) The length of the forecast of the model. Defaults to 1.}

\item{export}{(character length 1) Format to export data}

\item{residuals}{(logical length 1) Whether to show residuals for the model. Defaults to False.}

\item{forecast_only}{(logical length 1) Whether to only show dates in the forecasting range. Defaults to False.}

\item{naive}{(logical length 1) Whether to show the naive baseline. This just assumes the closing price will be the same
as the previous day's closing price. Defaults to False.}

\item{metric}{(character length 1) The metric to use for the forecast. Defaults to "mape".}
}
\description{
Wrapper for Python function forecast.regr_chart from OpenBB Terminal SDK
}
\examples{
forecast.regr_chart(target_column='close', n_predict=5, train_split=0.85, forecast_horizon=5, output_chunk_length=1, residuals=FALSE, forecast_only=FALSE, naive=FALSE)
}
