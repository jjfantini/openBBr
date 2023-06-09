% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{crypto.ov.wf}
\alias{crypto.ov.wf}
\title{Scrapes top coins withdrawal fees}
\usage{
crypto.ov.wf(limit = 100)
}
\arguments{
\item{limit}{(integer length 1) Number of coins to search, by default n=100, one page has 100 coins, so 1 page is scraped.}
}
\description{
Wrapper for Python function crypto.ov.wf from OpenBB Terminal SDK
}
\examples{
crypto.ov.wf(limit=100)
}
