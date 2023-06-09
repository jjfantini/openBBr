% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{fixedincome.ycrv}
\alias{fixedincome.ycrv}
\title{Gets yield curve data from FRED.}
\usage{
fixedincome.ycrv(
  date = "",
  return_date = FALSE,
  inflation_adjusted = FALSE,
  spot_or_par
)
}
\arguments{
\item{date}{(character length 1) Date to get curve for. If empty, gets most recent date (format yyyy-mm-dd)}

\item{return_date}{(logical length 1) If True, returns date of yield curve}
}
\description{
Wrapper for Python function fixedincome.ycrv from OpenBB Terminal SDK
}
