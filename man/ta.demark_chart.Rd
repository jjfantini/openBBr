% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{ta.demark_chart}
\alias{ta.demark_chart}
\title{Plot demark sequential indicator}
\usage{
ta.demark_chart(
  data,
  symbol = "",
  min_to_show = 5,
  export = "",
  sheet_name,
  external_axes
)
}
\arguments{
\item{data}{(data.frame) DataFrame of values}

\item{symbol}{(character length 1) Symbol that the data corresponds to}

\item{min_to_show}{(integer length 1) Minimum value to show}

\item{export}{(character length 1) Format to export data}
}
\description{
Wrapper for Python function ta.demark_chart from OpenBB Terminal SDK
}
\examples{
ta.demark_chart(min_to_show=5)
}
