
# openBBr

<!-- badges: start -->
<!-- badges: end -->

The goal of openBBr is to to utilize the OpenBB SDK in an R accesbile function. This package allows the use of the SDK endpoints as functions or ability to deploy as a plumber API.

## Installation

You can install the development version of openBBr from [GitHub](https://github.com/jjfantini/openBBr) with:

``` r
# install.packages("devtools")
devtools::install_github("jjfantini/openBBr")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(openBBr)
## basic example code

```

## Plumber API Usage Examples
- example of how to use `stocks.load` and `stocks.options.chains` via plumber API

1. load the package `devtools::load_all('.')`
2. start plumber API `plumber::plumb(file="./R/functions.R")$run()`
3. run API calls (example):
  - `curl http://127.0.0.1:3121/stocks.opions.chains?symbol=GOOGL`
  - `curl http://127.0.0.1:3121/stocks.load?symbol=GOOGL&monthly=TRUE`
