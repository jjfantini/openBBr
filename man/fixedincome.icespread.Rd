% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{fixedincome.icespread}
\alias{fixedincome.icespread}
\title{Get data for ICE BofA US Corporate Bond Spreads}
\usage{
fixedincome.icespread(
  category = "all",
  area = "us",
  grade = "non_sovereign",
  options = FALSE,
  start_date,
  end_date
)
}
\arguments{
\item{category}{(character length 1) The type of category you want to see, either "all", "duration", "eur" or "usd".}

\item{area}{(character length 1) The type of area you want to see, either "asia", "emea", "eu", "ex_g10", "latin_america" or "us"}

\item{grade}{(character length 1) The type of grade you want to see, either "a", "aa", "aaa", "b", "bb", "bbb", "ccc", "crossover",
"high_grade", "high_yield", "non_financial", "non_sovereign", "private_sector", "public_sector"}
}
\description{
Wrapper for Python function fixedincome.icespread from OpenBB Terminal SDK
}
