% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{crypto.defi.luna_supply}
\alias{crypto.defi.luna_supply}
\title{Get supply history of the Terra ecosystem}
\usage{
crypto.defi.luna_supply(supply_type = "lunaSupplyChallengeStats", days = 30)
}
\arguments{
\item{supply_type}{(character length 1) Supply type to unpack json}

\item{days}{(integer length 1) Day count to fetch data}
}
\description{
Wrapper for Python function crypto.defi.luna_supply from OpenBB Terminal SDK
}
\examples{
crypto.defi.luna_supply(supply_type='lunaSupplyChallengeStats', days=30)
}
