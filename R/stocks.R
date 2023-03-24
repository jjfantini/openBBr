hello <- function() {
    "Hello, world!"
}

echo <- function(msg) {
    list(msg = paste0("The message is: ", msg))
}

#' openbb_stocks_load
#'
#' @description a wrapper for openbb.stocks.load() function in python
#' @param symbol character. Ticker to get data.
#' @param start_date Date. Start date to get data from with. Default: "1050-01-01".
#' @param end_date Date. End date to get data from with. Default: Sys.Date().
#' @param interval numeric. Default: 1440 - Interval (in minutes) to get data 1, 5, 15, 30, 60 or 1440 (24hrs).
#' @param prepost logical. Default: F - Append Pre/Post hours data.
#' @param source string. Default: YahooFinance - Other sources:
#'                AlphaVantage (https://www.alphavantage.co/documentation/)
#'                Eod Historical Data (https://eodhistoricaldata.com/financial-apis/)
#' @param weekly logical. Default: F.
#' @param monthly logical. Default: F.
#' @param verbose logical. Default: F.

openbb_stocks_load <- function(symbol, start_date = "1950-01-01", end_date = Sys.Date(), interval = 1440,
                               prepost = FALSE, source = "YahooFinance", weekly = FALSE, monthly = FALSE,
                               verbose = FALSE) {
    # Check if Python is available
    if (!reticulate::py_available()) {
        stop("Python is not available")
    }

    # Transform Arguments
    start_date <- as.Date(start_date)

    # Defensive programming
    checkmate::assert_character(symbol, any.missing = FALSE, len = 1)
    checkmate::assert_date(start_date, any.missing = FALSE)
    checkmate::assert_date(end_date, any.missing = FALSE)
    checkmate::assert_number(interval, lower = 1, upper = 1450)
    checkmate::assert_choice(source, choices = c("YahooFinance", "AlphaVantage", "Eod Historical Data"))
    checkmate::assert_logical(prepost, any.missing = FALSE, len = 1)
    checkmate::assert_logical(weekly, any.missing = FALSE, len = 1)
    checkmate::assert_logical(monthly, any.missing = FALSE, len = 1)
    checkmate::assert_logical(verbose, any.missing = FALSE, len = 1)


    # WRAPPER FUNCTION for stock data
    stock_data <- py$openbb$stocks$load(symbol = symbol,
                                        start_date = start_date,
                                        end_date = end_date,
                                        interval = interval,
                                        prepost = prepost,
                                        source = source,
                                        weekly = weekly,
                                        monthly = monthly,
                                        verbose = verbose)

    # Convert to data.table
    out <- data.table::as.data.table(stock_data, keep.rownames = TRUE)

    # Change rn to date column
    colnames(out)[1] <- "Date"

    return(out)
}





#' Run stocks API
#'
#' @param ... Options passed to \code{plumber::plumb()$run()}
#' @examples
#' \dontrun{
#' run_stocks()
#' run_stocks(swagger = TRUE, port = 8000)
#' }
#' @return A running Plumber API
#' @export
run_stocks <- function(...) {
    plumber::plumb(dir = system.file("plumber", "stocks", package = "openBBr"))$run(...)
}