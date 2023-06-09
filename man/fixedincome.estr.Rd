% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{fixedincome.estr}
\alias{fixedincome.estr}
\title{Obtain data for Euro Short-Term Rate (ESTR)}
\usage{
fixedincome.estr(
  parameter = "volume_weighted_trimmed_mean_rate",
  start_date,
  end_date
)
}
\arguments{
\item{parameter}{(character length 1) The parameter to get data for.}
}
\description{
Wrapper for Python function fixedincome.estr from OpenBB Terminal SDK
}
