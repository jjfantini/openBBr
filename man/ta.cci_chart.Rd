% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{ta.cci_chart}
\alias{ta.cci_chart}
\title{Plots CCI Indicator}
\usage{
ta.cci_chart(
  data,
  window = 14,
  scalar = 0.0015,
  symbol = "",
  export = "",
  sheet_name,
  external_axes
)
}
\description{
Wrapper for Python function ta.cci_chart from OpenBB Terminal SDK
}
\examples{
ta.cci_chart(window=14, scalar=0.0015)
}
