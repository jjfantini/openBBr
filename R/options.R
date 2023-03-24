#' openbb_option_chains ========================================================================================
#'
#' @description A wrapper for the openbb.stocks.options.chains() function in Python
#' @param symbol string. Symbol to get chain for
#' @param source string. Default: "Nasdaq" - Source to get data from. Can be "YahooFinance", "Tradier", "Nasdaq", or "Intrinio"
#' @param expiration Date or NULL. Date to get chain for. By default returns all dates. Default: NULL
#'
openbb_option_chains <- function(symbol, source = "Nasdaq", expiration = NULL) {

    # Defensive checks
    # Check if Python is available
    if (!reticulate::py_available()) {
        stop("Python is not available")
    }

    # Defensives
    checkmate::check_character(symbol)
    checkmate::check_choice(source, choices = c("Nasdaq", "YahooFinance", "Tradier", "Intrinio"))
    if (!is.null(expiration)) {
        checkmate::check_date(expiration)
    }

    # WRAPPER FUNCTION for option chain data
    option_chains_data <- py$openbb$stocks$options$chains(symbol = symbol,
                                                          source = source,
                                                          expiration = expiration
    )

    # Convert to data.table
    out <- data.table::as.data.table(option_chains_data, keep.rownames = F)

    return(out)
}

#' openbb_eod_option_chain =====================================================================================
#'
#' @description A wrapper for the openbb.stocks.options.eodchain() function in Python
#' @param symbol string. Symbol to get option chain for
#' @param date string. Date to get EOD chain for (YYYY-MM-DD)
#' @param quiet boolean. Default: FALSE - Flag to suppress progress bar
#'
openbb_eod_option_chain <- function(symbol, date, quiet = FALSE) {

    # Defensive checks
    # Check if Python is available
    if (!reticulate::py_available()) {
        stop("Python is not available")
    }

    checkmate::check_character(symbol)
    checkmate::check_date(date)
    stopifnot(is.logical(quiet))

    # Retrieve EOD option chain data
    eod_option_chain_data <- py$openbb$stocks$options$eodchain(symbol = symbol,
                                                               date = date,
                                                               quiet = quiet
    )

    # Convert to data.table
    out <- data.table::as.data.table(eod_option_chain_data, keep.rownames = TRUE)

    return(out)
}



#' openbb_iv_surface ===========================================================================================
#'
#' @description A wrapper for the openbb.stocks.options.vsurf() function in Python
#' @param symbol string. Stock ticker symbol to get
#'
openbb_iv_surface <- function(symbol) {

    # Defensive checks
    stopifnot(reticulate::py_available())
    checkmate::check_character(symbol)

    # Retrieve IV surface data for calls and puts
    iv_surface_data <- py$openbb$stocks$options$vsurf(symbol = symbol)

    # Convert to data.table
    out <- data.table::as.data.table(iv_surface_data, keep.rownames = F)

    return(out)
}

#' Run options API =============================================================================================
#'
#' @param ... Options passed to \code{plumber::plumb()$run()}
#' @examples
#' \dontrun{
#' run_options()
#' run_options(swagger = TRUE, port = 8000)
#' }
#' @return A running Plumber API
#' @export
#'
run_options <- function(...) {
    plumber::plumb(dir = system.file("plumber", "options", package = "openBBr"))$run(...)
}