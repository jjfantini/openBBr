% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{crypto.tools.il_chart}
\alias{crypto.tools.il_chart}
\title{Displays Impermanent Loss in a custom liquidity pool}
\usage{
crypto.tools.il_chart(
  price_changeA,
  price_changeB,
  proportion,
  initial_pool_value,
  narrative = FALSE,
  export = "",
  sheet_name
)
}
\arguments{
\item{price_changeA}{(integer length 1) price change of crypto A in percentage}

\item{price_changeB}{(integer length 1) price change of crypto B in percentage}

\item{proportion}{(integer length 1) percentage of first token in pool}

\item{initial_pool_value}{(integer length 1) initial value that pool contains}

\item{narrative}{(logical length 1) display narrative version instead of dataframe}

\item{export}{(character length 1) Export dataframe data to csv,json,xlsx file}
}
\description{
Wrapper for Python function crypto.tools.il_chart from OpenBB Terminal SDK
}
\examples{
crypto.tools.il_chart(narrative='False')
}
