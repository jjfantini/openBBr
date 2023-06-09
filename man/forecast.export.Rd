% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{forecast.export}
\alias{forecast.export}
\title{Export a dataframe to a file}
\usage{
forecast.export(data, export, name = "", sheet_name)
}
\arguments{
\item{data}{(data.frame) The dataframe to export}

\item{export}{(character length 1) The format to export the dataframe to}

\item{name}{(character length 1) The name of the dataframe}
}
\description{
Wrapper for Python function forecast.export from OpenBB Terminal SDK
}
