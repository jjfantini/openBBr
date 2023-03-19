#' openbb_crypto_load
#'
#' @description A wrapper for the openbb.crypto.load() function in Python
#' @param symbol string. Coin to get data
#' @param start_date Date or NULL. Start date to get data from with. - datetime or string format (YYYY-MM-DD). Default: NULL
#' @param interval numeric or string. The interval between data points in minutes. Choose from: 1, 15, 30, 60, 240, 1440, 10080, 43200. Default: 1440
#' @param exchange string. The exchange to get data from. Default: binance
#' @param to_symbol string. Quote Currency (Defaults to usdt). Default: usd
#' @param end_date Date or NULL. End date to get data from with. - datetime or string format (YYYY-MM-DD). Default: NULL
#' @param source string. The source of the data. Choose from: CCXT, CoinGecko, YahooFinance. Default: CoinGecko
#'
openbb_crypto_load <- function(symbol, start_date ="1950-01-01", end_date = NULL, interval = 1440,
                               exchange = "binance", to_symbol = "usd",
                               source = "CoinGecko") {

    # Defensive checks
    stopifnot(reticulate::py_available())
    checkmate::check_character(symbol)
    if (!is.null(start_date)) {
        checkmate::check_date(start_date)
    }
    if (!is.null(end_date)) {
        checkmate::check_date(end_date)
    }
    checkmate::check_choice(interval, choices = c("1", "15", "30", "60", "240", "1440", "10080", "43200"))
    checkmate::check_character(exchange)
    checkmate::check_character(to_symbol)
    checkmate::check_choice(source, choices = c("CCXT", "CoinGecko", "YahooFinance"))

    # Retrieve crypto data and measure time

    crypto_data <- py$openbb$crypto$load(symbol = symbol,
                                         start_date = start_date,
                                         end_date = end_date,
                                         interval = interval,
                                         exchange = exchange,
                                         to_symbol = to_symbol,
                                         source = source
    )


    # Convert to data.table
    out <- data.table::as.data.table(crypto_data, keep.rownames = TRUE)

    # Change rn to date column
    colnames(out)[1] <- "Date"

    return(out)
}

#' Run crptos API
#'
#' @param ... Options passed to \code{plumber::plumb()$run()}
#' @examples
#' \dontrun{
#' run_cryptos()
#' run_scryptosswagger = TRUE, port = 8000)
#' }
#' @return A running Plumber API
#' @export
run_cryptos <- function(...) {
    plumber::plumb(dir = system.file("plumber", "cryptos", package = "openBBr"))$run(...)
}