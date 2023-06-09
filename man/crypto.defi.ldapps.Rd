% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{crypto.defi.ldapps}
\alias{crypto.defi.ldapps}
\title{Returns information about listed DeFi protocols, their current TVL and changes to it in the last hour/day/week.}
\usage{
crypto.defi.ldapps(
  limit = 100,
  sortby = "",
  ascend = FALSE,
  description = FALSE,
  drop_chain = TRUE
)
}
\arguments{
\item{limit}{(integer length 1) The number of dApps to display}

\item{sortby}{(character length 1) Key by which to sort data}

\item{ascend}{(logical length 1) Flag to sort data descending}

\item{description}{(logical length 1) Flag to display description of protocol}

\item{drop_chain}{(logical length 1) Whether to drop the chain column}
}
\description{
Wrapper for Python function crypto.defi.ldapps from OpenBB Terminal SDK
}
\examples{
crypto.defi.ldapps(limit=100, ascend=FALSE, description=FALSE, drop_chain=TRUE)
}
