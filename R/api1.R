hello <- function() {
    "Hello, world!"
}

echo <- function(msg) {
    list(msg = paste0("The message is: ", msg))
}

n_plot <- function(n) {
    n <- as.numeric(n)
    if (n > 1e6) stop("n must be less than or equal to 1e6", call. = FALSE)
    graphics::hist(stats::rnorm(n))
}

add <- function(x, y) {
    x <- as.numeric(x)
    y <- as.numeric(y)
    if (is.na(x) | is.na(y)) stop("Invalid input", call. = FALSE)
    x + y
}
#' openbb_prices
#'
#' @description a wrapper for openbb.stocks.load() function in python
#' @param interval  numeric. Default: 1440 - Interval (in minutes) to get data 1, 5, 15, 30, 60 or 1440 (24hrs)
#' @param prepost boolean. Default: F - Append Pre/Post hours data
#' @param source string. Default: yahooFinance -  Other sources:
#'  AlphaVantage (https://www.alphavantage.co/documentation/)
#'  Eod Historical Data (https://eodhistoricaldata.com/financial-apis/)
#'  @param weekly boolean. Default: F
#'  @param monthly boolean. Default: F
#'  @param verbose boolean. Default: F

openbb_prices <- function(symbol, start_date, end_date, interval, prepost, source, weekly, monthly, verbose ) {
    # Defensives
    checkmate::check_character(symbol)
    checkmate::check_date(start_date)
    checkmate::check_date(end_date)
    checkmate::check_number(interval, upper = 1450)
    checkmate::check_choice(source, choices = c("YahooFinance", "AlphaVantage", "Eod Historical Data"))
    stopifnot(is.logical(prepost))
    stopifnot(is.logical(weekly))
    stopifnot(is.logical(monthly))
    stopifnot(is.logical(verbose))


    stock_data <- py$openbb$stocks$load(symbol = symbol,
                                        start_date = start_date,
                                        end_date = end_date,
                                        interval = interval,
                                        prepost = prepost,
                                        source = source,
                                        weekly = weekly,
                                        monthly = monthly,
                                        verbose = verbose
                                        )
    stock_data
}

#' Run API 1
#'
#' @param ... Options passed to \code{plumber::plumb()$run()}
#' @examples
#' \dontrun{
#' run_api1()
#' run_api1(swagger = TRUE, port = 8000)
#' }
#' @return A running Plumber API
#' @export
run_api1 <- function(...) {
    plumber::plumb(dir = system.file("plumber", "api1", package = "openBBr"))$run(...)
}