#' openbb_etf_load
#'
#' @description A wrapper for the openbb.etf.load() function in Python
#' @param symbol string. Ticker to get data
#' @param start_date Date or NULL. Start date to get data from with. - datetime or string format (YYYY-MM-DD). Default: NULL
#' @param interval numeric. Default: 1440 - Interval (in minutes) to get data 1, 5, 15, 30, 60, or 1440 (24hrs)
#' @param end_date Date or NULL. End date to get data from with. - datetime or string format (YYYY-MM-DD). Default: NULL
#' @param prepost boolean. Default: F - Append Pre/Post hours data
#' @param source string. Default: YahooFinance -  Other sources:
#' @param weekly boolean. Default: F
#' @param monthly boolean. Default: F
#' @param verbose boolean. Default: F
#'
openbb_etf_load <- function(symbol, start_date = '1950-01-01', end_date = NULL, interval = 1440,
                            prepost = F, source = "YahooFinance", weekly = F, monthly = F,
                            verbose = F) {

    # Defensive checks
    stopifnot(reticulate::py_available())
    checkmate::check_character(symbol)
    if (!is.null(start_date)) {
        checkmate::check_date(start_date)
    }
    if (!is.null(end_date)) {
        checkmate::check_date(end_date)
    }
    checkmate::check_number(interval, upper = 1450)
    checkmate::check_choice(source, choices = c("YahooFinance"))
    stopifnot(is.logical(prepost))
    stopifnot(is.logical(weekly))
    stopifnot(is.logical(monthly))
    stopifnot(is.logical(verbose))

    # Retrieve ETF data and measure time

    etf_data <- py$openbb$etf$load(symbol = symbol,
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
    out <- data.table::as.data.table(etf_data, keep.rownames = TRUE)

    # Change rn to date column
    colnames(out)[1] <- "Date"

    return(out)
}

#' Run etfs API
#'
#' @param ... Options passed to \code{plumber::plumb()$run()}
#' @examples
#' \dontrun{
#' run_etfs()
#' run_etfs(swagger = TRUE, port = 8000)
#' }
#' @return A running Plumber API
#' @export
run_etfs <- function(...) {
    plumber::plumb(dir = system.file("plumber", "etfs", package = "openBBr"))$run(...)
}
