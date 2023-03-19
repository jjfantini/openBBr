hello <- function() {
    "Hello, world!"
}

echo <- function(msg) {
    list(msg = paste0("The message is: ", msg))
}

#' openbb_stocks_load
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

openbb_stocks_load <- function( symbol = NULL, start_date = "1050-01-01", end_date = Sys.Date(), interval = 1440,
                          prepost = F, source = "YahooFinance", weekly = F, monthly = F,
                          verbose = F ) {
    # Defensives ---------

    # stop if Py Main Module is not available
    stopifnot(reticulate::py_available())

    # Check arguments are intended class
    checkmate::check_character(symbol)
    checkmate::check_date(start_date)
    checkmate::check_date(end_date)
    checkmate::check_number(interval, upper = 1450)
    checkmate::check_choice(source, choices = c("YahooFinance", "AlphaVantage", "Eod Historical Data"))
    stopifnot(is.logical(prepost))
    stopifnot(is.logical(weekly))
    stopifnot(is.logical(monthly))
    stopifnot(is.logical(verbose))

    # Retrieve stock data and measure time

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

    # Convert to data.table
    out <- data.table::as.data.table(stock_data, keep.rownames = T)

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