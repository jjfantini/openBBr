% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{qa.unitroot}
\alias{qa.unitroot}
\title{Calculate test statistics for unit roots}
\usage{
qa.unitroot(data, fuller_reg = "c", kpss_reg = "c")
}
\arguments{
\item{data}{(data.frame) DataFrame of target variable}

\item{fuller_reg}{(character length 1) Type of regression of ADF test. Can be ‘c’,’ct’,’ctt’,’nc’ 'c' - Constant and t - trend order}

\item{kpss_reg}{(character length 1) Type of regression for KPSS test.  Can be ‘c’,’ct'}
}
\description{
Wrapper for Python function qa.unitroot from OpenBB Terminal SDK
}
\examples{
qa.unitroot(fuller_reg='c', kpss_reg='c')
}
