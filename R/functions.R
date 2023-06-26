
#' Login and load user info.
#'
#' @description Wrapper for Python function login from OpenBB Terminal SDK
#'
#' @param email (character length 1) The email.
#' @param password (character length 1) The password.
#' @param token (character length 1) The OpenBB Personal Access Token.
#' @param keep_session (logical length 1) Keep the session, i.e., next time the user logs in,
#'     there is no need to enter the email and password or the token.
#' @export
#* @get /login
login <- function(email = "", password = "", token = "", keep_session = FALSE) {
  o <- do.call(what=py$openbb$login, args=as.list(rlang::call_match())[-1])
  o
}


#' Logout and clear session.
#'
#' @description Wrapper for Python function logout from OpenBB Terminal SDK
#'
#' @export
#* @get /logout
logout <- function() {
  o <- do.call(what=py$openbb$logout, args=as.list(rlang::call_match())[-1])
  o
}


#' Get news for a given term and source. [Source: Feedparser]
#'
#' @description Wrapper for Python function news from OpenBB Terminal SDK
#'
#' @param term (character length 1) term to search on the news articles
#' @param sources (character length 1) sources to exclusively show news from (separated by commas)
#' @param sort (character length 1) the column to sort by
#' @examples
#' news(sort='published')
#' @export
#* @get /news
news <- function(term = "", sources = "", sort = "published") {
  o <- do.call(what=py$openbb$news, args=as.list(rlang::call_match())[-1])
  o
}


#' Display user info.
#'
#' @description Wrapper for Python function whoami from OpenBB Terminal SDK
#'
#' @export
#* @get /whoami
whoami <- function() {
  o <- do.call(what=py$openbb$whoami, args=as.list(rlang::call_match())[-1])
  o
}


#'
#' @description Wrapper for Python function alt.about from OpenBB Terminal SDK
#'
#' @export
#* @get /alt.about
alt.about <- function() {
  o <- do.call(what=py$openbb$alt$about, args=as.list(rlang::call_match())[-1])
  o
}


#' Get top stories from HackerNews.
#'
#' @description Wrapper for Python function alt.hn from OpenBB Terminal SDK
#'
#' @param limit (integer length 1) Number of stories to return
#' @export
#* @get /alt.hn
alt.hn <- function(limit = 10) {
  o <- do.call(what=py$openbb$alt$hn, args=as.list(rlang::call_match())[-1])
  o
}


#' View top stories from HackerNews.
#'
#' @description Wrapper for Python function alt.hn_chart from OpenBB Terminal SDK
#'
#' @param limit (integer length 1) Number of stories to return
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @export
#* @get /alt.hn_chart
alt.hn_chart <- function(limit = 10, export = "", sheet_name) {
  o <- do.call(what=py$openbb$alt$hn_chart, args=as.list(rlang::call_match())[-1])
  o
}


#'
#' @description Wrapper for Python function alt.covid.about from OpenBB Terminal SDK
#'
#' @export
#* @get /alt.covid.about
alt.covid.about <- function() {
  o <- do.call(what=py$openbb$alt$covid$about, args=as.list(rlang::call_match())[-1])
  o
}


#' Get historical cases for given country.
#'
#' @description Wrapper for Python function alt.covid.global_cases from OpenBB Terminal SDK
#'
#' @param country (character length 1) Country to search for
#' @examples
#' alt.covid.global_cases(country='Canada')
#' @export
#* @get /alt.covid.global_cases
alt.covid.global_cases <- function(country) {
  o <- do.call(what=py$openbb$alt$covid$global_cases, args=as.list(rlang::call_match())[-1])
  o
}


#' Get historical deaths for given country.
#'
#' @description Wrapper for Python function alt.covid.global_deaths from OpenBB Terminal SDK
#'
#' @param country (character length 1) Country to search for
#' @examples
#' alt.covid.global_deaths(country='Canada')
#' @export
#* @get /alt.covid.global_deaths
alt.covid.global_deaths <- function(country) {
  o <- do.call(what=py$openbb$alt$covid$global_deaths, args=as.list(rlang::call_match())[-1])
  o
}


#' Get historical cases and deaths by country.
#'
#' @description Wrapper for Python function alt.covid.ov from OpenBB Terminal SDK
#'
#' @param country (character length 1) Country to get data for
#' @param limit (integer length 1) Number of raw data to show
#' @examples
#' alt.covid.ov(country='Canada', limit=100)
#' @export
#* @get /alt.covid.ov
alt.covid.ov <- function(country, limit = 100) {
  o <- do.call(what=py$openbb$alt$covid$ov, args=as.list(rlang::call_match())[-1])
  o
}


#' Prints table showing historical cases and deaths by country.
#'
#' @description Wrapper for Python function alt.covid.ov_chart from OpenBB Terminal SDK
#'
#' @param country (character length 1) Country to get data for
#' @param raw (logical length 1) Flag to display raw data
#' @param limit (integer length 1) Number of raw data to show
#' @param export (character length 1) Format to export data
#' @param plot (logical length 1) Flag to display historical plot
#' @examples
#' alt.covid.ov_chart(country='Canada', raw=FALSE, limit=10, plot=TRUE)
#' @export
#* @get /alt.covid.ov_chart
alt.covid.ov_chart <- function(country, raw = FALSE, limit = 10, export = "", sheet_name, plot = TRUE) {
  o <- do.call(what=py$openbb$alt$covid$ov_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Load cases and find slope over period.
#'
#' @description Wrapper for Python function alt.covid.slopes from OpenBB Terminal SDK
#'
#' @param days_back (integer length 1) Number of historical days to consider
#' @param limit (integer length 1) Number of rows to show
#' @param threshold (integer length 1) Threshold for total number of cases
#' @param ascend (logical length 1) Flag to sort in ascending order
#' @examples
#' alt.covid.slopes(days_back=30, limit=50, threshold=10000, ascend=FALSE)
#' @export
#* @get /alt.covid.slopes
alt.covid.slopes <- function(days_back = 30, limit = 50, threshold = 10000, ascend = FALSE) {
  o <- do.call(what=py$openbb$alt$covid$slopes, args=as.list(rlang::call_match())[-1])
  o
}


#' Prints table showing countries with the highest case slopes.
#'
#' @description Wrapper for Python function alt.covid.slopes_chart from OpenBB Terminal SDK
#'
#' @param days_back (integer length 1) Number of historical days to get slope for
#' @param limit (integer length 1) Number to show in table
#' @param threshold (integer length 1) Threshold for total cases over period
#' @param ascend (logical length 1) Flag to sort in ascending order
#' @param export (character length 1) Format to export data
#' @examples
#' alt.covid.slopes_chart(days_back=30, limit=10, ascend=FALSE, threshold=10000)
#' @export
#* @get /alt.covid.slopes_chart
alt.covid.slopes_chart <- function(days_back = 30, limit = 10, threshold = 10000, ascend = FALSE, export = "", sheet_name) {
  o <- do.call(what=py$openbb$alt$covid$slopes_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Show historical cases and deaths by country.
#'
#' @description Wrapper for Python function alt.covid.stat from OpenBB Terminal SDK
#'
#' @param country (character length 1) Country to get data for
#' @param stat (character length 1) Statistic to get.  Either "cases", "deaths" or "rates"
#' @param limit (integer length 1) Number of raw data to show
#' @examples
#' alt.covid.stat(country='Canada', stat='cases', limit=10)
#' @export
#* @get /alt.covid.stat
alt.covid.stat <- function(country, stat = "cases", limit = 10) {
  o <- do.call(what=py$openbb$alt$covid$stat, args=as.list(rlang::call_match())[-1])
  o
}


#' Prints table showing historical cases and deaths by country.
#'
#' @description Wrapper for Python function alt.covid.stat_chart from OpenBB Terminal SDK
#'
#' @param country (character length 1) Country to get data for
#' @param stat (character length 1) Statistic to get.  Either "cases", "deaths" or "rates"
#' @param raw (logical length 1) Flag to display raw data
#' @param limit (integer length 1) Number of raw data to show
#' @param export (character length 1) Format to export data
#' @param plot (logical length 1) Flag to plot data
#' @examples
#' alt.covid.stat_chart(country='Canada', stat='cases', raw=FALSE, limit=10, plot=TRUE)
#' @export
#* @get /alt.covid.stat_chart
alt.covid.stat_chart <- function(country, stat = "cases", raw = FALSE, limit = 10, export = "", sheet_name, plot = TRUE) {
  o <- do.call(what=py$openbb$alt$covid$stat_chart, args=as.list(rlang::call_match())[-1])
  o
}


#'
#' @description Wrapper for Python function alt.oss.about from OpenBB Terminal SDK
#'
#' @export
#* @get /alt.oss.about
alt.oss.about <- function() {
  o <- do.call(what=py$openbb$alt$oss$about, args=as.list(rlang::call_match())[-1])
  o
}


#' Get repository stats.
#'
#' @description Wrapper for Python function alt.oss.github_data from OpenBB Terminal SDK
#'
#' @param url (character length 1) github api endpoint
#' @export
#* @get /alt.oss.github_data
alt.oss.github_data <- function(url, kwargs) {
  o <- do.call(what=py$openbb$alt$oss$github_data, args=as.list(rlang::call_match())[-1])
  o
}


#' Get repository star history.
#'
#' @description Wrapper for Python function alt.oss.history from OpenBB Terminal SDK
#'
#' @param repo (character length 1) Repo to search for Format: org/repo, e.g., openbb-finance/openbbterminal
#' @export
#* @get /alt.oss.history
alt.oss.history <- function(repo) {
  o <- do.call(what=py$openbb$alt$oss$history, args=as.list(rlang::call_match())[-1])
  o
}


#' Plots repo summary [Source: https://api.github.com].
#'
#' @description Wrapper for Python function alt.oss.history_chart from OpenBB Terminal SDK
#'
#' @param repo (character length 1) Repository to display star history. Format: org/repo, e.g., openbb-finance/openbbterminal
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @export
#* @get /alt.oss.history_chart
alt.oss.history_chart <- function(repo, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$alt$oss$history_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get startups from ROSS index [Source: https://runacap.com/].
#'
#' @description Wrapper for Python function alt.oss.ross from OpenBB Terminal SDK
#'
#' @export
#* @get /alt.oss.ross
alt.oss.ross <- function() {
  o <- do.call(what=py$openbb$alt$oss$ross, args=as.list(rlang::call_match())[-1])
  o
}


#' Plots list of startups from ross index [Source: https://runacap.com/]
#'
#' @description Wrapper for Python function alt.oss.ross_chart from OpenBB Terminal SDK
#'
#' @param limit (integer length 1) Number of startups to search
#' @param sortby (character length 1) Key by which to sort data. Default: Stars AGR [%]
#' @param ascend (logical length 1) Flag to sort data descending
#' @param show_chart (logical length 1) Flag to show chart with startups
#' @param show_growth (logical length 1) Flag to show growth line chart
#' @param chart_type (character length 1) Chart type {stars,forks}
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' alt.oss.ross_chart(limit=10, sortby='Stars AGR [%]', ascend=FALSE, show_chart=FALSE, show_growth=TRUE, chart_type='stars')
#' @export
#* @get /alt.oss.ross_chart
alt.oss.ross_chart <- function(limit = 10, sortby = "Stars AGR [%]", ascend = FALSE, show_chart = FALSE, show_growth = TRUE, chart_type = "stars", export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$alt$oss$ross_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get repos sorted by stars or forks. Can be filtered by categories.
#'
#' @description Wrapper for Python function alt.oss.search from OpenBB Terminal SDK
#'
#' @param sortby (character length 1) Sort repos by {stars, forks}
#' @param page (integer length 1) Page number to get repos
#' @param categories (character length 1) Check for repo categories. If more than one separate with a comma: e.g., finance,investment. Default: None
#' @examples
#' alt.oss.search(sortby='stars', page=1)
#' @export
#* @get /alt.oss.search
alt.oss.search <- function(sortby = "stars", page = 1, categories = "") {
  o <- do.call(what=py$openbb$alt$oss$search, args=as.list(rlang::call_match())[-1])
  o
}


#' Get repository summary.
#'
#' @description Wrapper for Python function alt.oss.summary from OpenBB Terminal SDK
#'
#' @param repo (character length 1) Repo to search for Format: org/repo, e.g., openbb-finance/openbbterminal
#' @export
#* @get /alt.oss.summary
alt.oss.summary <- function(repo) {
  o <- do.call(what=py$openbb$alt$oss$summary, args=as.list(rlang::call_match())[-1])
  o
}


#' Prints table showing repo summary [Source: https://api.github.com].
#'
#' @description Wrapper for Python function alt.oss.summary_chart from OpenBB Terminal SDK
#'
#' @param repo (character length 1) Repository to display summary. Format: org/repo, e.g., openbb-finance/openbbterminal
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @export
#* @get /alt.oss.summary_chart
alt.oss.summary_chart <- function(repo, export = "", sheet_name) {
  o <- do.call(what=py$openbb$alt$oss$summary_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get repos sorted by stars or forks. Can be filtered by categories.
#'
#' @description Wrapper for Python function alt.oss.top from OpenBB Terminal SDK
#'
#' @param sortby (character length 1) Sort repos by {stars, forks}
#' @param limit (integer length 1) Number of repos to search for
#' @param categories (character length 1) Check for repo categories. If more than one separate with a comma: e.g., finance,investment. Default: None
#' @examples
#' alt.oss.top(limit=50)
#' @export
#* @get /alt.oss.top
alt.oss.top <- function(sortby, limit = 50, categories = "") {
  o <- do.call(what=py$openbb$alt$oss$top, args=as.list(rlang::call_match())[-1])
  o
}


#' Plots repo summary [Source: https://api.github.com].
#'
#' @description Wrapper for Python function alt.oss.top_chart from OpenBB Terminal SDK
#'
#' @param sortby (character length 1) Sort repos by {stars, forks}
#' @param categories (character length 1) Check for repo categories. If more than one separate with a comma: e.g., finance,investment. Default: None
#' @param limit (integer length 1) Number of repos to look at
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' alt.oss.top_chart(limit=10)
#' @export
#* @get /alt.oss.top_chart
alt.oss.top_chart <- function(sortby, categories = "", limit = 10, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$alt$oss$top_chart, args=as.list(rlang::call_match())[-1])
  o
}


#'
#' @description Wrapper for Python function alt.realestate.about from OpenBB Terminal SDK
#'
#' @export
#* @get /alt.realestate.about
alt.realestate.about <- function() {
  o <- do.call(what=py$openbb$alt$realestate$about, args=as.list(rlang::call_match())[-1])
  o
}


#' All sales for specified postcode.
#'
#' @description Wrapper for Python function alt.realestate.get_estate_sales from OpenBB Terminal SDK
#'
#' @param postcode (character length 1) Postcode
#' @export
#* @get /alt.realestate.get_estate_sales
alt.realestate.get_estate_sales <- function(postcode, limit = 25) {
  o <- do.call(what=py$openbb$alt$realestate$get_estate_sales, args=as.list(rlang::call_match())[-1])
  o
}


#' Get regional house price statistics.
#'
#' @description Wrapper for Python function alt.realestate.get_region_stats from OpenBB Terminal SDK
#'
#' @param region (character length 1) region
#' @export
#* @get /alt.realestate.get_region_stats
alt.realestate.get_region_stats <- function(region, start_date = "2010-01-01", end_date = "") {
  o <- do.call(what=py$openbb$alt$realestate$get_region_stats, args=as.list(rlang::call_match())[-1])
  o
}


#' Get towns sold house price data.
#'
#' @description Wrapper for Python function alt.realestate.get_towns_sold_prices from OpenBB Terminal SDK
#'
#' @param town (character length 1) town
#' @export
#* @get /alt.realestate.get_towns_sold_prices
alt.realestate.get_towns_sold_prices <- function(town, start_date, end_date, limit = 25) {
  o <- do.call(what=py$openbb$alt$realestate$get_towns_sold_prices, args=as.list(rlang::call_match())[-1])
  o
}


#'
#' @description Wrapper for Python function crypto.about from OpenBB Terminal SDK
#'
#' @export
#* @get /crypto.about
crypto.about <- function() {
  o <- do.call(what=py$openbb$crypto$about, args=as.list(rlang::call_match())[-1])
  o
}


#' Plot candle chart from dataframe. [Source: Binance]
#'
#' @description Wrapper for Python function crypto.candle from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Ticker name
#' @param exchange (character length 1) Exchange to use
#' @param to_symbol (character length 1) Currency to use
#' @param source (character length 1) Source to use
#' @param volume (logical length 1) If volume data shall be plotted, by default True
#' @param ylabel (character length 1) Y-label of the graph, by default ""
#' @param title (character length 1) Title of graph, by default ""
#' @param yscale (character length 1) Scaling for y axis.  Either linear or log
#' @export
#* @get /crypto.candle
crypto.candle <- function(symbol, data, start_date, end_date, interval, exchange = "binance", to_symbol = "usdt", source = "CCXT", volume = TRUE, ylabel = "", title = "", external_axes, yscale = "linear", raw = FALSE) {
  o <- do.call(what=py$openbb$crypto$candle, args=as.list(rlang::call_match())[-1])
  o
}


#' Load data for Technical Analysis
#'
#' @description Wrapper for Python function crypto.chart from OpenBB Terminal SDK
#'
#' @param prices_df (data.frame) Cryptocurrency
#' @param to_symbol (character length 1) Coin (only used for chart title), by default ""
#' @param from_symbol (character length 1) Currency (only used for chart title), by default ""
#' @param yscale (character length 1) Scale for y axis of plot Either linear or log
#' @examples
#' crypto.chart(yscale='linear')
#' @export
#* @get /crypto.chart
crypto.chart <- function(prices_df, to_symbol = "", from_symbol = "", source = "", exchange = "", interval = "", external_axes, yscale = "linear") {
  o <- do.call(what=py$openbb$crypto$chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Find similar coin by coin name,symbol or id.
#'
#' @description Wrapper for Python function crypto.find from OpenBB Terminal SDK
#'
#' @param query (character length 1) Cryptocurrency
#' @param source (character length 1) Data source of coins.  CoinGecko or CoinPaprika or Binance or Coinbase
#' @param key (character length 1) Searching key (symbol, id, name)
#' @param limit (integer length 1) Number of records to display
#' @examples
#' crypto.find(source='CoinGecko', key='symbol', limit=10)
#' @export
#* @get /crypto.find
crypto.find <- function(query, source = "CoinGecko", key = "symbol", limit = 10) {
  o <- do.call(what=py$openbb$crypto$find, args=as.list(rlang::call_match())[-1])
  o
}


#' Load crypto currency to get data for
#'
#' @description Wrapper for Python function crypto.load from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Coin to get
#' @param exchange (character length 1) The exchange to get data from.
#' @param to_symbol (character length 1) Quote Currency (Defaults to usdt)
#' @param source (character length 1) The source of the data
#'     Choose from: CCXT, CoinGecko, YahooFinance
#' @examples
#' crypto.load(symbol='AMZN', interval=1440, exchange='binance', vs_currency='usdt', source='CCXT')
#' @export
#* @get /crypto.load
crypto.load <- function(symbol, start_date, interval, exchange = "binance", to_symbol = "usd", end_date, source = "CoinGecko") {
  o <- do.call(what=py$openbb$crypto$load, args=as.list(rlang::call_match())[-1])
  o
}


#' Returns price and confidence interval from pyth live feed. [Source: Pyth]
#'
#' @description Wrapper for Python function crypto.price from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Symbol of the asset to get price and confidence interval from
#' @examples
#' crypto.price(symbol='AMZN')
#' @export
#* @get /crypto.price
crypto.price <- function(symbol) {
  o <- do.call(what=py$openbb$crypto$price, args=as.list(rlang::call_match())[-1])
  o
}


#'
#' @description Wrapper for Python function crypto.dd.about from OpenBB Terminal SDK
#'
#' @export
#* @get /crypto.dd.about
crypto.dd.about <- function() {
  o <- do.call(what=py$openbb$crypto$dd$about, args=as.list(rlang::call_match())[-1])
  o
}


#' Returns active addresses of a certain symbol
#'
#' @description Wrapper for Python function crypto.dd.active from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Asset to search active addresses (e.g., BTC)
#' @param interval (character length 1) Interval frequency (e.g., 24h)
#' @param start_date (character length 1) Initial date, format YYYY-MM-DD
#' @examples
#' crypto.dd.active(symbol='AMZN', interval='24h', start_date='2010-01-01')
#' @export
#* @get /crypto.dd.active
crypto.dd.active <- function(symbol, interval = "24h", start_date = "2010-01-01", end_date) {
  o <- do.call(what=py$openbb$crypto$dd$active, args=as.list(rlang::call_match())[-1])
  o
}


#' Plots active addresses of a certain symbol over time
#'
#' @description Wrapper for Python function crypto.dd.active_chart from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Asset to search active addresses (e.g., BTC)
#' @param start_date (character length 1) Initial date, format YYYY-MM-DD
#' @param interval (character length 1) Interval frequency (possible values are: 24h, 1w, 1month)
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.dd.active_chart(symbol='AMZN', start_date='2010-01-01', interval='24h')
#' @export
#* @get /crypto.dd.active_chart
crypto.dd.active_chart <- function(symbol, start_date = "2010-01-01", end_date, interval = "24h", export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$crypto$dd$active_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Returns all available pairs on Binance in DataFrame format. DataFrame has 3 columns symbol, baseAsset, quoteAsset
#'
#' @description Wrapper for Python function crypto.dd.all_binance_trading_pairs from OpenBB Terminal SDK
#'
#' @export
#* @get /crypto.dd.all_binance_trading_pairs
crypto.dd.all_binance_trading_pairs <- function() {
  o <- do.call(what=py$openbb$crypto$dd$all_binance_trading_pairs, args=as.list(rlang::call_match())[-1])
  o
}


#' Get all time high for a coin in a given currency
#'
#' @description Wrapper for Python function crypto.dd.ath from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Coin to get all time high for
#' @param currency (character length 1) Currency to get all time high in
#' @export
#* @get /crypto.dd.ath
crypto.dd.ath <- function(symbol, currency = "USD") {
  o <- do.call(what=py$openbb$crypto$dd$ath, args=as.list(rlang::call_match())[-1])
  o
}


#' Get all time low for a coin in a given currency
#'
#' @description Wrapper for Python function crypto.dd.atl from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Coin to get all time low for
#' @param currency (character length 1) Currency to get all time low in
#' @export
#* @get /crypto.dd.atl
crypto.dd.atl <- function(symbol, currency = "USD") {
  o <- do.call(what=py$openbb$crypto$dd$atl, args=as.list(rlang::call_match())[-1])
  o
}


#' Get account holdings for asset. [Source: Binance]
#'
#' @description Wrapper for Python function crypto.dd.balance from OpenBB Terminal SDK
#'
#' @param from_symbol (character length 1) Cryptocurrency
#' @param to_symbol (character length 1) Cryptocurrency
#' @examples
#' crypto.dd.balance(to_symbol='USDT')
#' @export
#* @get /crypto.dd.balance
crypto.dd.balance <- function(from_symbol, to_symbol = "USDT") {
  o <- do.call(what=py$openbb$crypto$dd$balance, args=as.list(rlang::call_match())[-1])
  o
}


#' Prints table showing account holdings for asset. [Source: Binance]
#'
#' @description Wrapper for Python function crypto.dd.balance_chart from OpenBB Terminal SDK
#'
#' @param from_symbol (character length 1) Cryptocurrency
#' @param to_symbol (character length 1) Cryptocurrency
#' @param export (character length 1) Export dataframe data to csv,json,xlsx
#' @examples
#' crypto.dd.balance_chart(to_symbol='USDT')
#' @export
#* @get /crypto.dd.balance_chart
crypto.dd.balance_chart <- function(from_symbol, to_symbol = "USDT", export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$dd$balance_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Basic coin information [Source: CoinPaprika]
#'
#' @description Wrapper for Python function crypto.dd.basic from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Cryptocurrency symbol (e.g. BTC)
#' @examples
#' crypto.dd.basic(symbol='BTC')
#' @export
#* @get /crypto.dd.basic
crypto.dd.basic <- function(symbol = "BTC") {
  o <- do.call(what=py$openbb$crypto$dd$basic, args=as.list(rlang::call_match())[-1])
  o
}


#' Prints table showing basic information for coin. Like:
#'
#' @description Wrapper for Python function crypto.dd.basic_chart from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Cryptocurrency symbol (e.g. BTC)
#' @param export (character length 1) Export dataframe data to csv,json,xlsx
#' @examples
#' crypto.dd.basic_chart(symbol='BTC')
#' @export
#* @get /crypto.dd.basic_chart
crypto.dd.basic_chart <- function(symbol = "BTC", export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$dd$basic_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Helper methods that for every coin available on Binance add all quote assets. [Source: Binance]
#'
#' @description Wrapper for Python function crypto.dd.binance_available_quotes_for_each_coin from OpenBB Terminal SDK
#'
#' @export
#* @get /crypto.dd.binance_available_quotes_for_each_coin
crypto.dd.binance_available_quotes_for_each_coin <- function() {
  o <- do.call(what=py$openbb$crypto$dd$binance_available_quotes_for_each_coin, args=as.list(rlang::call_match())[-1])
  o
}


#' Get candles for chosen trading pair and time interval. [Source: Coinbase]
#'
#' @description Wrapper for Python function crypto.dd.candle from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Trading pair of coins on Coinbase e.g ETH-USDT or UNI-ETH
#' @param interval (character length 1) Time interval. One from 1min, 5min ,15min, 1hour, 6hour, 24hour, 1day
#' @export
#* @get /crypto.dd.candle
crypto.dd.candle <- function(symbol, interval = "24hour") {
  o <- do.call(what=py$openbb$crypto$dd$candle, args=as.list(rlang::call_match())[-1])
  o
}


#' Returns 30d change of the supply held in exchange wallets of a certain symbol.
#'
#' @description Wrapper for Python function crypto.dd.change from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Asset symbol to search supply (e.g., BTC)
#' @param exchange (character length 1) Exchange to check net position change (e.g., binance)
#' @param start_date (character length 1) Initial date, format YYYY-MM-DD
#' @examples
#' crypto.dd.change(symbol='AMZN', exchange='binance', start_date='2010-01-01')
#' @export
#* @get /crypto.dd.change
crypto.dd.change <- function(symbol, exchange = "binance", start_date = "2010-01-01", end_date) {
  o <- do.call(what=py$openbb$crypto$dd$change, args=as.list(rlang::call_match())[-1])
  o
}


#' Plots 30d change of the supply held in exchange wallets.
#'
#' @description Wrapper for Python function crypto.dd.change_chart from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Asset to search active addresses (e.g., BTC)
#' @param exchange (character length 1) Exchange to check net position change (possible values are: aggregated, binance,
#'     bittrex, coinex, gate.io, gemini, huobi, kucoin, poloniex, bibox, bigone, bitfinex,
#'     hitbtc, kraken, okex, bithumb, zb.com, cobinhood, bitmex, bitstamp, coinbase, coincheck, luno)
#' @param start_date (character length 1) Initial date, format YYYY-MM-DD
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.dd.change_chart(symbol='AMZN', exchange='binance', start_date='2010-01-01')
#' @export
#* @get /crypto.dd.change_chart
crypto.dd.change_chart <- function(symbol, exchange = "binance", start_date = "2010-01-01", end_date, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$crypto$dd$change_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Check if symbol is in defined binance. [Source: Binance]
#'
#' @description Wrapper for Python function crypto.dd.check_valid_binance_str from OpenBB Terminal SDK
#'
#' @export
#* @get /crypto.dd.check_valid_binance_str
crypto.dd.check_valid_binance_str <- function(symbol) {
  o <- do.call(what=py$openbb$crypto$dd$check_valid_binance_str, args=as.list(rlang::call_match())[-1])
  o
}


#' Returns the price of a cryptocurrency
#'
#' @description Wrapper for Python function crypto.dd.close from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Crypto to check close price (BTC or ETH)
#' @param start_date (character length 1) Initial date, format YYYY-MM-DD
#' @param print_errors (logical length 1) Flag to print errors. Default: True
#' @examples
#' crypto.dd.close(symbol='ETH', start_date='2010-01-01', print_errors=TRUE)
#' @export
#* @get /crypto.dd.close
crypto.dd.close <- function(symbol, start_date = "2010-01-01", end_date, print_errors = TRUE) {
  o <- do.call(what=py$openbb$crypto$dd$close, args=as.list(rlang::call_match())[-1])
  o
}


#' Get coin by id [Source: CoinPaprika]
#'
#' @description Wrapper for Python function crypto.dd.coin from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) id of coin from coinpaprika e.g. Ethereum - > 'eth-ethereum'
#' @examples
#' crypto.dd.coin(symbol='eth-ethereum')
#' @export
#* @get /crypto.dd.coin
crypto.dd.coin <- function(symbol = "eth-ethereum") {
  o <- do.call(what=py$openbb$crypto$dd$coin, args=as.list(rlang::call_match())[-1])
  o
}


#' Get prices for given coin. [Source: CoinGecko]
#'
#' @description Wrapper for Python function crypto.dd.coin_market_chart from OpenBB Terminal SDK
#'
#' @param vs_currency (character length 1) currency vs which display data
#' @param days (integer length 1) number of days to display the data
#' @examples
#' crypto.dd.coin_market_chart(vs_currency='usd', days=30)
#' @export
#* @get /crypto.dd.coin_market_chart
crypto.dd.coin_market_chart <- function(symbol = "", vs_currency = "usd", days = 30, kwargs) {
  o <- do.call(what=py$openbb$crypto$dd$coin_market_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get developer stats for a coin
#'
#' @description Wrapper for Python function crypto.dd.dev from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Coin to get stats for
#' @export
#* @get /crypto.dd.dev
crypto.dd.dev <- function(symbol) {
  o <- do.call(what=py$openbb$crypto$dd$dev, args=as.list(rlang::call_match())[-1])
  o
}


#' Returns the total amount of coins held on exchange addresses in units and percentage.
#'
#' @description Wrapper for Python function crypto.dd.eb from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Asset to search active addresses (e.g., BTC)
#' @param exchange (character length 1) Exchange to check net position change (possible values are: aggregated, binance, bittrex,
#'     coinex, gate.io, gemini, huobi, kucoin, poloniex, bibox, bigone, bitfinex, hitbtc, kraken,
#'     okex, bithumb, zb.com, cobinhood, bitmex, bitstamp, coinbase, coincheck, luno), by default "aggregated"
#' @examples
#' crypto.dd.eb(symbol='AMZN', exchange='aggregated')
#' @export
#* @get /crypto.dd.eb
crypto.dd.eb <- function(symbol, exchange = "aggregated", start_date, end_date) {
  o <- do.call(what=py$openbb$crypto$dd$eb, args=as.list(rlang::call_match())[-1])
  o
}


#' Plots total amount of coins held on exchange addresses in units and percentage.
#'
#' @description Wrapper for Python function crypto.dd.eb_chart from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Asset to search active addresses (e.g., BTC)
#' @param exchange (character length 1) Exchange to check net position change (possible values are: aggregated, binance, bittrex,
#'     coinex, gate.io, gemini, huobi, kucoin, poloniex, bibox, bigone, bitfinex, hitbtc, kraken,
#'     okex, bithumb, zb.com, cobinhood, bitmex, bitstamp, coinbase, coincheck, luno), by default "aggregated"
#' @param percentage (logical length 1) Show percentage instead of stacked value.
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.dd.eb_chart(symbol='AMZN', exchange='aggregated', percentage=FALSE)
#' @export
#* @get /crypto.dd.eb_chart
crypto.dd.eb_chart <- function(symbol, exchange = "aggregated", start_date, end_date, percentage = FALSE, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$crypto$dd$eb_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get all events related to given coin like conferences, start date of futures trading etc.
#'
#' @description Wrapper for Python function crypto.dd.events from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Cryptocurrency symbol (e.g. BTC)
#' @param sortby (character length 1) Key by which to sort data. Every column name is valid
#'     (see for possible values:
#'     https://api.coinpaprika.com/docs#tag/Coins/paths/~1coins~1%7Bcoin_id%7D~1events/get).
#' @param ascend (logical length 1) Flag to sort data ascending
#' @examples
#' crypto.dd.events(symbol='BTC', sortby='date', ascend=FALSE)
#' @export
#* @get /crypto.dd.events
crypto.dd.events <- function(symbol = "BTC", sortby = "date", ascend = FALSE) {
  o <- do.call(what=py$openbb$crypto$dd$events, args=as.list(rlang::call_match())[-1])
  o
}


#' Prints table showing all events for given coin id. [Source: CoinPaprika]
#'
#' @description Wrapper for Python function crypto.dd.events_chart from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Cryptocurrency symbol (e.g. BTC)
#' @param limit (integer length 1) Number of records to display
#' @param sortby (character length 1) Key by which to sort data. Every column name is valid
#'     (see for possible values:
#'     https://api.coinpaprika.com/docs#tag/Coins/paths/~1coins~1%7Bcoin_id%7D~1events/get).
#' @param ascend (logical length 1) Flag to sort data ascending
#' @param links (logical length 1) Flag to display urls
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.dd.events_chart(symbol='BTC', limit=10, sortby='date', ascend=FALSE, links=FALSE)
#' @export
#* @get /crypto.dd.events_chart
crypto.dd.events_chart <- function(symbol = "BTC", limit = 10, sortby = "date", ascend = FALSE, links = FALSE, export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$dd$events_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get all exchanges for given coin id. [Source: CoinPaprika]
#'
#' @description Wrapper for Python function crypto.dd.ex from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Cryptocurrency symbol (e.g. BTC)
#' @param sortby (character length 1) Key by which to sort data. Every column name is valid (see for possible values:
#'     https://api.coinpaprika.com/v1).
#' @param ascend (logical length 1) Flag to sort data ascending
#' @examples
#' crypto.dd.ex(symbol='BTC', sortby='adjusted_volume_24h_share', ascend=TRUE)
#' @export
#* @get /crypto.dd.ex
crypto.dd.ex <- function(symbol = "BTC", sortby = "adjusted_volume_24h_share", ascend = TRUE) {
  o <- do.call(what=py$openbb$crypto$dd$ex, args=as.list(rlang::call_match())[-1])
  o
}


#' Prints table showing all exchanges for given coin id. [Source: CoinPaprika]
#'
#' @description Wrapper for Python function crypto.dd.ex_chart from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Cryptocurrency symbol (e.g. BTC)
#' @param limit (integer length 1) Number of records to display
#' @param sortby (character length 1) Key by which to sort data. Every column name is valid (see for possible values:
#'     https://api.coinpaprika.com/v1).
#' @param ascend (logical length 1) Flag to sort data ascending
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.dd.ex_chart(symbol='btc', limit=10, sortby='adjusted_volume_24h_share', ascend=TRUE)
#' @export
#* @get /crypto.dd.ex_chart
crypto.dd.ex_chart <- function(symbol = "btc", limit = 10, sortby = "adjusted_volume_24h_share", ascend = TRUE, export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$dd$ex_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Helper method to get all the exchanges supported by ccxt
#'
#' @description Wrapper for Python function crypto.dd.exchanges from OpenBB Terminal SDK
#'
#' @export
#* @get /crypto.dd.exchanges
crypto.dd.exchanges <- function() {
  o <- do.call(what=py$openbb$crypto$dd$exchanges, args=as.list(rlang::call_match())[-1])
  o
}


#' Returns coin fundraising
#'
#' @description Wrapper for Python function crypto.dd.fr from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Crypto symbol to check fundraising
#' @examples
#' crypto.dd.fr(symbol='ETH')
#' @export
#* @get /crypto.dd.fr
crypto.dd.fr <- function(symbol) {
  o <- do.call(what=py$openbb$crypto$dd$fr, args=as.list(rlang::call_match())[-1])
  o
}


#' Display coin fundraising
#'
#' @description Wrapper for Python function crypto.dd.fr_chart from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Crypto symbol to check coin fundraising
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.dd.fr_chart(symbol='ETH')
#' @export
#* @get /crypto.dd.fr_chart
crypto.dd.fr_chart <- function(symbol, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$crypto$dd$fr_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Returns available messari timeseries
#'
#' @description Wrapper for Python function crypto.dd.get_mt from OpenBB Terminal SDK
#'
#' @param only_free (logical length 1) Display only timeseries available for free
#' @examples
#' crypto.dd.get_mt(only_free=TRUE)
#' @export
#* @get /crypto.dd.get_mt
crypto.dd.get_mt <- function(only_free = TRUE) {
  o <- do.call(what=py$openbb$crypto$dd$get_mt, args=as.list(rlang::call_match())[-1])
  o
}


#' Prints table showing messari timeseries list
#'
#' @description Wrapper for Python function crypto.dd.get_mt_chart from OpenBB Terminal SDK
#'
#' @param limit (integer length 1) number to show
#' @param query (character length 1) Query to search across all messari timeseries
#' @param only_free (logical length 1) Display only timeseries available for free
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.dd.get_mt_chart(limit=10, only_free=TRUE)
#' @export
#* @get /crypto.dd.get_mt_chart
crypto.dd.get_mt_chart <- function(limit = 10, query = "", only_free = TRUE, export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$dd$get_mt_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Returns  a list of developer activity for a given coin and time interval.
#'
#' @description Wrapper for Python function crypto.dd.gh from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Crypto symbol to check github activity
#' @param dev_activity (logical length 1) Whether to filter only for development activity
#' @param interval (character length 1) Interval frequency (e.g., 1d)
#' @examples
#' crypto.dd.gh(symbol='ETH', dev_activity=FALSE, interval='1d')
#' @export
#* @get /crypto.dd.gh
crypto.dd.gh <- function(symbol, dev_activity = FALSE, interval = "1d", start_date, end_date) {
  o <- do.call(what=py$openbb$crypto$dd$gh, args=as.list(rlang::call_match())[-1])
  o
}


#' Returns a list of github activity for a given coin and time interval.
#'
#' @description Wrapper for Python function crypto.dd.gh_chart from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Crypto symbol to check github activity
#' @param dev_activity (logical length 1) Whether to filter only for development activity
#' @param interval (character length 1) Interval frequency (some possible values are: 1h, 1d, 1w)
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.dd.gh_chart(symbol='ETH', dev_activity=FALSE, interval='1d')
#' @export
#* @get /crypto.dd.gh_chart
crypto.dd.gh_chart <- function(symbol, start_date, dev_activity = FALSE, end_date, interval = "1d", export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$crypto$dd$gh_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Returns coin governance
#'
#' @description Wrapper for Python function crypto.dd.gov from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Crypto symbol to check governance
#' @examples
#' crypto.dd.gov(symbol='ETH')
#' @export
#* @get /crypto.dd.gov
crypto.dd.gov <- function(symbol) {
  o <- do.call(what=py$openbb$crypto$dd$gov, args=as.list(rlang::call_match())[-1])
  o
}


#' Prints table showing coin governance
#'
#' @description Wrapper for Python function crypto.dd.gov_chart from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Crypto symbol to check coin governance
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.dd.gov_chart(symbol='ETH')
#' @export
#* @get /crypto.dd.gov_chart
crypto.dd.gov_chart <- function(symbol, export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$dd$gov_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Gets Sentiment analysis provided by FinBrain's API [Source: finbrain].
#'
#' @description Wrapper for Python function crypto.dd.headlines from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Ticker symbol to get the sentiment analysis from
#' @examples
#' crypto.dd.headlines(symbol='AMZN')
#' @export
#* @get /crypto.dd.headlines
crypto.dd.headlines <- function(symbol) {
  o <- do.call(what=py$openbb$crypto$dd$headlines, args=as.list(rlang::call_match())[-1])
  o
}


#' Sentiment analysis from FinBrain for Cryptocurrencies
#'
#' @description Wrapper for Python function crypto.dd.headlines_chart from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Cryptocurrency
#' @param raw (logical length 1) Display raw table data
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.dd.headlines_chart(symbol='ETH')
#' @export
#* @get /crypto.dd.headlines_chart
crypto.dd.headlines_chart <- function(symbol, raw = FALSE, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$crypto$dd$headlines_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Returns coin investors
#'
#' @description Wrapper for Python function crypto.dd.inv from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Crypto symbol to check investors
#' @examples
#' crypto.dd.inv(symbol='ETH')
#' @export
#* @get /crypto.dd.inv
crypto.dd.inv <- function(symbol) {
  o <- do.call(what=py$openbb$crypto$dd$inv, args=as.list(rlang::call_match())[-1])
  o
}


#' Prints table showing coin investors
#'
#' @description Wrapper for Python function crypto.dd.inv_chart from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Crypto symbol to check coin investors
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.dd.inv_chart(symbol='ETH')
#' @export
#* @get /crypto.dd.inv_chart
crypto.dd.inv_chart <- function(symbol, export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$dd$inv_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Returns asset's links
#'
#' @description Wrapper for Python function crypto.dd.links from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Crypto symbol to check links
#' @examples
#' crypto.dd.links(symbol='ETH')
#' @export
#* @get /crypto.dd.links
crypto.dd.links <- function(symbol) {
  o <- do.call(what=py$openbb$crypto$dd$links, args=as.list(rlang::call_match())[-1])
  o
}


#' Prints table showing coin links
#'
#' @description Wrapper for Python function crypto.dd.links_chart from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Crypto symbol to check links
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.dd.links_chart(symbol='ETH')
#' @export
#* @get /crypto.dd.links_chart
crypto.dd.links_chart <- function(symbol, export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$dd$links_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Returns market dominance of a coin over time
#'
#' @description Wrapper for Python function crypto.dd.mcapdom from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Crypto symbol to check market cap dominance
#' @param interval (character length 1) Interval frequency (possible values are: 5m, 15m, 30m, 1h, 1d, 1w)
#' @examples
#' crypto.dd.mcapdom(symbol='ETH', interval='1d')
#' @export
#* @get /crypto.dd.mcapdom
crypto.dd.mcapdom <- function(symbol, interval = "1d", start_date, end_date) {
  o <- do.call(what=py$openbb$crypto$dd$mcapdom, args=as.list(rlang::call_match())[-1])
  o
}


#' Plots market dominance of a coin over time
#'
#' @description Wrapper for Python function crypto.dd.mcapdom_chart from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Crypto symbol to check market cap dominance
#' @param interval (character length 1) Interval frequency (possible values are: 5m, 15m, 30m, 1h, 1d, 1w)
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.dd.mcapdom_chart(symbol='ETH', interval='1d')
#' @export
#* @get /crypto.dd.mcapdom_chart
crypto.dd.mcapdom_chart <- function(symbol, start_date, end_date, interval = "1d", export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$crypto$dd$mcapdom_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' All markets for given coin and currency [Source: CoinPaprika]
#'
#' @description Wrapper for Python function crypto.dd.mkt from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Cryptocurrency symbol (e.g. BTC)
#' @param quotes (character length 1) Comma separated list of quotes to return.
#'     Example: quotes=USD,BTC
#'     Allowed values:
#'     BTC, ETH, USD, EUR, PLN, KRW, GBP, CAD, JPY, RUB, TRY, NZD, AUD, CHF, UAH, HKD, SGD, NGN,
#'     PHP, MXN, BRL, THB, CLP, CNY, CZK, DKK, HUF, IDR, ILS, INR, MYR, NOK, PKR, SEK, TWD, ZAR,
#'     VND, BOB, COP, PEN, ARS, ISK
#' @param sortby (character length 1) Key by which to sort data. Every column name is valid (see for possible values:
#'     https://api.coinpaprika.com/v1).
#' @param ascend (logical length 1) Flag to sort data ascending
#' @examples
#' crypto.dd.mkt(symbol='BTC', quotes='USD', sortby='pct_volume_share', ascend=TRUE)
#' @export
#* @get /crypto.dd.mkt
crypto.dd.mkt <- function(symbol = "BTC", quotes = "USD", sortby = "pct_volume_share", ascend = TRUE) {
  o <- do.call(what=py$openbb$crypto$dd$mkt, args=as.list(rlang::call_match())[-1])
  o
}


#' Prints table showing all markets for given coin id. [Source: CoinPaprika]
#'
#' @description Wrapper for Python function crypto.dd.mkt_chart from OpenBB Terminal SDK
#'
#' @param from_symbol (character length 1) Cryptocurrency symbol (e.g. BTC)
#' @param to_symbol (character length 1) Quoted currency
#' @param limit (integer length 1) Number of records to display
#' @param sortby (character length 1) Key by which to sort data. Every column name is valid (see for possible values:
#'     https://api.coinpaprika.com/v1).
#' @param ascend (logical length 1) Flag to sort data ascending
#' @param links (logical length 1) Flag to display urls
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.dd.mkt_chart(from_symbol='BTC', to_symbol='USD', limit=20, sortby='pct_volume_share', ascend=TRUE, links=FALSE)
#' @export
#* @get /crypto.dd.mkt_chart
crypto.dd.mkt_chart <- function(from_symbol = "BTC", to_symbol = "USD", limit = 20, sortby = "pct_volume_share", ascend = TRUE, links = FALSE, export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$dd$mkt_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Returns messari timeseries
#'
#' @description Wrapper for Python function crypto.dd.mt from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Crypto symbol to check messari timeseries
#' @param timeseries_id (character length 1) Messari timeserie id
#' @param interval (character length 1) Interval frequency (possible values are: 5m, 15m, 30m, 1h, 1d, 1w)
#' @examples
#' crypto.dd.mt(symbol='ETH', interval='1d')
#' @export
#* @get /crypto.dd.mt
crypto.dd.mt <- function(symbol, timeseries_id, interval = "1d", start_date, end_date) {
  o <- do.call(what=py$openbb$crypto$dd$mt, args=as.list(rlang::call_match())[-1])
  o
}


#' Plots messari timeseries
#'
#' @description Wrapper for Python function crypto.dd.mt_chart from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Crypto symbol to check market cap dominance
#' @param timeseries_id (character length 1) Obtained by api.crypto.dd.get_mt command
#' @param interval (character length 1) Interval frequency (possible values are: 5m, 15m, 30m, 1h, 1d, 1w)
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.dd.mt_chart(symbol='ETH', interval='1d')
#' @export
#* @get /crypto.dd.mt_chart
crypto.dd.mt_chart <- function(symbol, timeseries_id, start_date, end_date, interval = "1d", export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$crypto$dd$mt_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get recent posts from CryptoPanic news aggregator platform. [Source: https://cryptopanic.com/]
#'
#' @description Wrapper for Python function crypto.dd.news from OpenBB Terminal SDK
#'
#' @param limit (integer length 1) number of news to fetch
#' @param post_kind (character length 1) Filter by category of news. Available values: news or media.
#' @param region (character length 1) Filter news by regions. Available regions are: en (English), de (Deutsch), nl (Dutch),
#'     es (Español), fr (Français), it (Italiano), pt (Português), ru (Русский)
#' @param sortby (character length 1) Key to sort by.
#' @param ascend (logical length 1) Sort in ascend order.
#' @examples
#' crypto.dd.news(limit=60, post_kind='news', region='en', sortby='published_at', ascend=TRUE)
#' @export
#* @get /crypto.dd.news
crypto.dd.news <- function(limit = 60, post_kind = "news", filter_, region = "en", source, symbol, sortby = "published_at", ascend = TRUE) {
  o <- do.call(what=py$openbb$crypto$dd$news, args=as.list(rlang::call_match())[-1])
  o
}


#' Prints table showing recent posts from CryptoPanic news aggregator platform.
#'
#' @description Wrapper for Python function crypto.dd.news_chart from OpenBB Terminal SDK
#'
#' @param post_kind (character length 1) Filter by category of news. Available values: news or media.
#' @param region (character length 1) Filter news by regions. Available regions are: en (English), de (Deutsch), nl (Dutch),
#'     es (Español), fr (Français), it (Italiano), pt (Português), ru (Русский)
#' @param limit (integer length 1) number of news to display
#' @param ascend (logical length 1) Sort in ascending order.
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.dd.news_chart(limit=25, post_kind='news', region='en', ascend=TRUE)
#' @export
#* @get /crypto.dd.news_chart
crypto.dd.news_chart <- function(post_kind = "news", region = "en", filter_, source, symbol, limit = 25, ascend = TRUE, export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$dd$news_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Returns addresses with non-zero balance of a certain symbol
#'
#' @description Wrapper for Python function crypto.dd.nonzero from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Asset to search (e.g., BTC)
#' @param start_date (character length 1) Initial date, format YYYY-MM-DD
#' @examples
#' crypto.dd.nonzero(symbol='AMZN', start_date='2010-01-01')
#' @export
#* @get /crypto.dd.nonzero
crypto.dd.nonzero <- function(symbol, start_date = "2010-01-01", end_date) {
  o <- do.call(what=py$openbb$crypto$dd$nonzero, args=as.list(rlang::call_match())[-1])
  o
}


#' Plots addresses with non-zero balance of a certain symbol
#'
#' @description Wrapper for Python function crypto.dd.nonzero_chart from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Asset to search (e.g., BTC)
#' @param start_date (character length 1) Initial date, format YYYY-MM-DD
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.dd.nonzero_chart(symbol='AMZN', start_date='2010-01-01')
#' @export
#* @get /crypto.dd.nonzero_chart
crypto.dd.nonzero_chart <- function(symbol, start_date = "2010-01-01", end_date, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$crypto$dd$nonzero_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Returns orderbook for a coin in a given exchange
#'
#' @description Wrapper for Python function crypto.dd.ob from OpenBB Terminal SDK
#'
#' @param exchange (character length 1) exchange id
#' @param symbol (character length 1) coin symbol
#' @param to_symbol (character length 1) currency to compare coin against
#' @examples
#' crypto.dd.ob(symbol='AMZN')
#' @export
#* @get /crypto.dd.ob
crypto.dd.ob <- function(exchange, symbol, to_symbol) {
  o <- do.call(what=py$openbb$crypto$dd$ob, args=as.list(rlang::call_match())[-1])
  o
}


#' Plots order book for a coin in a given exchange
#'
#' @description Wrapper for Python function crypto.dd.ob_chart from OpenBB Terminal SDK
#'
#' @param exchange (character length 1) exchange id
#' @param symbol (character length 1) coin symbol
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.dd.ob_chart(symbol='AMZN')
#' @export
#* @get /crypto.dd.ob_chart
crypto.dd.ob_chart <- function(exchange, symbol, to_symbol, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$crypto$dd$ob_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Returns open interest by exchange for a certain symbol
#'
#' @description Wrapper for Python function crypto.dd.oi from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Crypto Symbol to search open interest futures (e.g., BTC)
#' @param interval (integer length 1) Frequency (possible values are: 0 for ALL, 2 for 1H, 1 for 4H, 4 for 12H), by default 0
#' @examples
#' crypto.dd.oi(symbol='ETH', interval=0)
#' @export
#* @get /crypto.dd.oi
crypto.dd.oi <- function(symbol, interval = 0) {
  o <- do.call(what=py$openbb$crypto$dd$oi, args=as.list(rlang::call_match())[-1])
  o
}


#' Plots open interest by exchange for a certain cryptocurrency
#'
#' @description Wrapper for Python function crypto.dd.oi_chart from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Crypto symbol to search open interest (e.g., BTC)
#' @param interval (integer length 1) Frequency (possible values are: 0 for ALL, 2 for 1H, 1 for 4H, 4 for 12H), by default 0
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.dd.oi_chart(symbol='ETH', interval=0)
#' @export
#* @get /crypto.dd.oi_chart
crypto.dd.oi_chart <- function(symbol, interval = 0, export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$dd$oi_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Returns coin product info
#'
#' @description Wrapper for Python function crypto.dd.pi from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Crypto symbol to check product info
#' @examples
#' crypto.dd.pi(symbol='ETH')
#' @export
#* @get /crypto.dd.pi
crypto.dd.pi <- function(symbol) {
  o <- do.call(what=py$openbb$crypto$dd$pi, args=as.list(rlang::call_match())[-1])
  o
}


#' Prints table showing project info
#'
#' @description Wrapper for Python function crypto.dd.pi_chart from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Crypto symbol to check project info
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.dd.pi_chart(symbol='ETH')
#' @export
#* @get /crypto.dd.pi_chart
crypto.dd.pi_chart <- function(symbol, export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$dd$pi_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Fetch data to calculate potential returns of a certain coin. [Source: CoinGecko]
#'
#' @description Wrapper for Python function crypto.dd.pr from OpenBB Terminal SDK
#'
#' @param main_coin (character length 1) Coin loaded to check potential returns for (e.g., algorand)
#' @examples
#' crypto.dd.pr(to_symbol='Coin to compare main_coin with (e.g., bitcoin)')
#' @export
#* @get /crypto.dd.pr
crypto.dd.pr <- function(main_coin, to_symbol, limit, price) {
  o <- do.call(what=py$openbb$crypto$dd$pr, args=as.list(rlang::call_match())[-1])
  o
}


#' Prints table showing potential returns of a certain coin. [Source: CoinGecko]
#'
#' @description Wrapper for Python function crypto.dd.pr_chart from OpenBB Terminal SDK
#'
#' @param to_symbol (character length 1) Coin loaded to check potential returns for (e.g., algorand)
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.dd.pr_chart(from_symbol='Coin to compare main_coin with (e.g., bitcoin)')
#' @export
#* @get /crypto.dd.pr_chart
crypto.dd.pr_chart <- function(to_symbol, from_symbol, limit, price, export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$dd$pr_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get all most important ticker related information for given coin id [Source: CoinPaprika]
#'
#' @description Wrapper for Python function crypto.dd.ps from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Cryptocurrency symbol (e.g. BTC)
#' @param quotes (character length 1) Comma separated quotes to return e.g quotes = USD, BTC
#' @examples
#' crypto.dd.ps(symbol='BTC', quotes='USD')
#' @export
#* @get /crypto.dd.ps
crypto.dd.ps <- function(symbol = "BTC", quotes = "USD") {
  o <- do.call(what=py$openbb$crypto$dd$ps, args=as.list(rlang::call_match())[-1])
  o
}


#' Prints table showing ticker information for single coin [Source: CoinPaprika]
#'
#' @description Wrapper for Python function crypto.dd.ps_chart from OpenBB Terminal SDK
#'
#' @param from_symbol (character length 1) Cryptocurrency symbol (e.g. BTC)
#' @param to_symbol (character length 1) Quoted currency
#' @param export (character length 1) Export dataframe data to csv,json,xlsx
#' @examples
#' crypto.dd.ps_chart(from_symbol='BTC', to_symbol='USD')
#' @export
#* @get /crypto.dd.ps_chart
crypto.dd.ps_chart <- function(from_symbol = "BTC", to_symbol = "USD", export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$dd$ps_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Returns coin roadmap
#'
#' @description Wrapper for Python function crypto.dd.rm from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Crypto symbol to check roadmap
#' @param ascend (logical length 1) reverse order
#' @examples
#' crypto.dd.rm(symbol='ETH', ascend=TRUE)
#' @export
#* @get /crypto.dd.rm
crypto.dd.rm <- function(symbol, ascend = TRUE) {
  o <- do.call(what=py$openbb$crypto$dd$rm, args=as.list(rlang::call_match())[-1])
  o
}


#' Plots coin roadmap
#'
#' @description Wrapper for Python function crypto.dd.rm_chart from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Crypto symbol to check roadmap
#' @param ascend (logical length 1) reverse order
#' @param limit (integer length 1) number to show
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.dd.rm_chart(symbol='ETH', ascend=TRUE, limit=5)
#' @export
#* @get /crypto.dd.rm_chart
crypto.dd.rm_chart <- function(symbol, ascend = TRUE, limit = 5, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$crypto$dd$rm_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get scores for a coin from CoinGecko
#'
#' @description Wrapper for Python function crypto.dd.score from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Coin to get scores for
#' @export
#* @get /crypto.dd.score
crypto.dd.score <- function(symbol) {
  o <- do.call(what=py$openbb$crypto$dd$score, args=as.list(rlang::call_match())[-1])
  o
}


#' Return all available quoted assets for given symbol. [Source: Coinbase]
#'
#' @description Wrapper for Python function crypto.dd.show_available_pairs_for_given_symbol from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Uppercase symbol of coin e.g BTC, ETH, UNI, LUNA, DOT ...
#' @examples
#' crypto.dd.show_available_pairs_for_given_symbol(symbol='ETH')
#' @export
#* @get /crypto.dd.show_available_pairs_for_given_symbol
crypto.dd.show_available_pairs_for_given_symbol <- function(symbol = "ETH") {
  o <- do.call(what=py$openbb$crypto$dd$show_available_pairs_for_given_symbol, args=as.list(rlang::call_match())[-1])
  o
}


#' Get social media stats for a coin
#'
#' @description Wrapper for Python function crypto.dd.social from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Coin to get social stats for
#' @export
#* @get /crypto.dd.social
crypto.dd.social <- function(symbol) {
  o <- do.call(what=py$openbb$crypto$dd$social, args=as.list(rlang::call_match())[-1])
  o
}


#' Get 24 hr stats for the product. Volume is in base currency units.
#'
#' @description Wrapper for Python function crypto.dd.stats from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Trading pair of coins on Coinbase e.g ETH-USDT or UNI-ETH
#' @examples
#' crypto.dd.stats(symbol='UNI-ETH')
#' @export
#* @get /crypto.dd.stats
crypto.dd.stats <- function(symbol) {
  o <- do.call(what=py$openbb$crypto$dd$stats, args=as.list(rlang::call_match())[-1])
  o
}


#' Prints table showing 24 hr stats for the product. Volume is in base currency units.
#'
#' @description Wrapper for Python function crypto.dd.stats_chart from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Trading pair of coins on Coinbase e.g ETH-USDT or UNI-ETH
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.dd.stats_chart(symbol='UNI-ETH')
#' @export
#* @get /crypto.dd.stats_chart
crypto.dd.stats_chart <- function(symbol, export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$dd$stats_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Returns coin team
#'
#' @description Wrapper for Python function crypto.dd.team from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Crypto symbol to check team
#' @examples
#' crypto.dd.team(symbol='ETH')
#' @export
#* @get /crypto.dd.team
crypto.dd.team <- function(symbol) {
  o <- do.call(what=py$openbb$crypto$dd$team, args=as.list(rlang::call_match())[-1])
  o
}


#' Prints table showing coin team
#'
#' @description Wrapper for Python function crypto.dd.team_chart from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Crypto symbol to check coin team
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.dd.team_chart(symbol='ETH')
#' @export
#* @get /crypto.dd.team_chart
crypto.dd.team_chart <- function(symbol, export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$dd$team_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Returns coin tokenomics
#'
#' @description Wrapper for Python function crypto.dd.tk from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Crypto symbol to check tokenomics
#' @param coingecko_id (character length 1) ID from coingecko
#' @examples
#' crypto.dd.tk(symbol='ETH')
#' @export
#* @get /crypto.dd.tk
crypto.dd.tk <- function(symbol, coingecko_id) {
  o <- do.call(what=py$openbb$crypto$dd$tk, args=as.list(rlang::call_match())[-1])
  o
}


#' Plots coin tokenomics
#'
#' @description Wrapper for Python function crypto.dd.tk_chart from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Crypto symbol to check tokenomics
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.dd.tk_chart(symbol='ETH')
#' @export
#* @get /crypto.dd.tk_chart
crypto.dd.tk_chart <- function(symbol, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$crypto$dd$tk_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get tokenomics for given coin. [Source: CoinGecko]
#'
#' @description Wrapper for Python function crypto.dd.tokenomics from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) coin symbol to check tokenomics
#' @export
#* @get /crypto.dd.tokenomics
crypto.dd.tokenomics <- function(symbol = "") {
  o <- do.call(what=py$openbb$crypto$dd$tokenomics, args=as.list(rlang::call_match())[-1])
  o
}


#' Returns trades for a coin in a given exchange
#'
#' @description Wrapper for Python function crypto.dd.trades from OpenBB Terminal SDK
#'
#' @param exchange_id (character length 1) exchange id
#' @param symbol (character length 1) coin symbol
#' @param to_symbol (character length 1) currency to compare coin against
#' @examples
#' crypto.dd.trades(symbol='AMZN')
#' @export
#* @get /crypto.dd.trades
crypto.dd.trades <- function(exchange_id, symbol, to_symbol) {
  o <- do.call(what=py$openbb$crypto$dd$trades, args=as.list(rlang::call_match())[-1])
  o
}


#' Prints table showing trades for a coin in a given exchange
#'
#' @description Wrapper for Python function crypto.dd.trades_chart from OpenBB Terminal SDK
#'
#' @param exchange (character length 1) exchange id
#' @param symbol (character length 1) coin symbol
#' @param to_symbol (character length 1) currency to compare coin against
#' @param limit (integer length 1) number of trades to display
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.dd.trades_chart(symbol='AMZN', limit=10)
#' @export
#* @get /crypto.dd.trades_chart
crypto.dd.trades_chart <- function(exchange, symbol, to_symbol, limit = 10, export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$dd$trades_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get information about chosen trading pair. [Source: Coinbase]
#'
#' @description Wrapper for Python function crypto.dd.trading_pair_info from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Trading pair of coins on Coinbase e.g ETH-USDT or UNI-ETH
#' @examples
#' crypto.dd.trading_pair_info(symbol='UNI-ETH')
#' @export
#* @get /crypto.dd.trading_pair_info
crypto.dd.trading_pair_info <- function(symbol) {
  o <- do.call(what=py$openbb$crypto$dd$trading_pair_info, args=as.list(rlang::call_match())[-1])
  o
}


#' Helper method that return all trading pairs on binance. Methods ause this data for input for e.g
#'
#' @description Wrapper for Python function crypto.dd.trading_pairs from OpenBB Terminal SDK
#'
#' @export
#* @get /crypto.dd.trading_pairs
crypto.dd.trading_pairs <- function() {
  o <- do.call(what=py$openbb$crypto$dd$trading_pairs, args=as.list(rlang::call_match())[-1])
  o
}


#' Get twitter timeline for given coin id. Not more than last 50 tweets [Source: CoinPaprika]
#'
#' @description Wrapper for Python function crypto.dd.twitter from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Cryptocurrency symbol (e.g. BTC)
#' @param sortby (character length 1) Key by which to sort data. Every column name is valid
#'     (see for possible values:
#'     https://api.coinpaprika.com/docs#tag/Coins/paths/~1coins~1%7Bcoin_id%7D~1twitter/get).
#' @param ascend (logical length 1) Flag to sort data descending
#' @examples
#' crypto.dd.twitter(symbol='BTC', sortby='date', ascend=TRUE)
#' @export
#* @get /crypto.dd.twitter
crypto.dd.twitter <- function(symbol = "BTC", sortby = "date", ascend = TRUE) {
  o <- do.call(what=py$openbb$crypto$dd$twitter, args=as.list(rlang::call_match())[-1])
  o
}


#' Prints table showing twitter timeline for given coin id. Not more than last 50 tweets [Source: CoinPaprika]
#'
#' @description Wrapper for Python function crypto.dd.twitter_chart from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Cryptocurrency symbol (e.g. BTC)
#' @param limit (integer length 1) Number of records to display
#' @param sortby (character length 1) Key by which to sort data. Every column name is valid
#'     (see for possible values:
#'     https://api.coinpaprika.com/docs#tag/Coins/paths/~1coins~1%7Bcoin_id%7D~1twitter/get).
#' @param ascend (logical length 1) Flag to sort data ascending
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.dd.twitter_chart(symbol='BTC', limit=10, sortby='date', ascend=TRUE)
#' @export
#* @get /crypto.dd.twitter_chart
crypto.dd.twitter_chart <- function(symbol = "BTC", limit = 10, sortby = "date", ascend = TRUE, export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$dd$twitter_chart, args=as.list(rlang::call_match())[-1])
  o
}


#'
#' @description Wrapper for Python function crypto.defi.about from OpenBB Terminal SDK
#'
#' @export
#* @get /crypto.defi.about
crypto.defi.about <- function() {
  o <- do.call(what=py$openbb$crypto$defi$about, args=as.list(rlang::call_match())[-1])
  o
}


#' Returns anchor protocol earnings data of a certain terra address
#'
#' @description Wrapper for Python function crypto.defi.anchor_data from OpenBB Terminal SDK
#'
#' @param address (character length 1) Terra address. Valid terra addresses start with 'terra'
#' @export
#* @get /crypto.defi.anchor_data
crypto.defi.anchor_data <- function(address = "") {
  o <- do.call(what=py$openbb$crypto$defi$anchor_data, args=as.list(rlang::call_match())[-1])
  o
}


#' Plots anchor protocol earnings data of a certain terra address
#'
#' @description Wrapper for Python function crypto.defi.anchor_data_chart from OpenBB Terminal SDK
#'
#' @param address (character length 1) Terra address. Valid terra addresses start with 'terra'
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @param show_transactions (logical length 1) Flag to show history of transactions in Anchor protocol for address. Default False
#' @examples
#' crypto.defi.anchor_data_chart(show_transactions=FALSE)
#' @export
#* @get /crypto.defi.anchor_data_chart
crypto.defi.anchor_data_chart <- function(address = "", export = "", sheet_name, show_transactions = FALSE, external_axes) {
  o <- do.call(what=py$openbb$crypto$defi$anchor_data_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Returns historical data of an asset in a certain terra address
#'
#' @description Wrapper for Python function crypto.defi.aterra from OpenBB Terminal SDK
#'
#' @param asset (character length 1) Terra asset {ust,luna,sdt}
#' @param address (character length 1) Terra address. Valid terra addresses start with 'terra'
#' @examples
#' crypto.defi.aterra(asset='ust', address='terra1tmnqgvg567ypvsvk6rwsga3srp7e3lg6u0elp8')
#' @export
#* @get /crypto.defi.aterra
crypto.defi.aterra <- function(asset = "ust", address = "terra1tmnqgvg567ypvsvk6rwsga3srp7e3lg6u0elp8") {
  o <- do.call(what=py$openbb$crypto$defi$aterra, args=as.list(rlang::call_match())[-1])
  o
}


#' Plots the 30-day history of specified asset in terra address
#'
#' @description Wrapper for Python function crypto.defi.aterra_chart from OpenBB Terminal SDK
#'
#' @param asset (character length 1) Terra asset {ust,luna,sdt}
#' @param address (character length 1) Terra address. Valid terra addresses start with 'terra'
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @export
#* @get /crypto.defi.aterra_chart
crypto.defi.aterra_chart <- function(asset = "", address = "", export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$crypto$defi$aterra_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Displays the 30-day history of the Anchor Yield Reserve.
#'
#' @description Wrapper for Python function crypto.defi.ayr from OpenBB Terminal SDK
#'
#' @export
#* @get /crypto.defi.ayr
crypto.defi.ayr <- function() {
  o <- do.call(what=py$openbb$crypto$defi$ayr, args=as.list(rlang::call_match())[-1])
  o
}


#' Plots the 30-day history of the Anchor Yield Reserve.
#'
#' @description Wrapper for Python function crypto.defi.ayr_chart from OpenBB Terminal SDK
#'
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file, by default False
#' @export
#* @get /crypto.defi.ayr_chart
crypto.defi.ayr_chart <- function(export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$crypto$defi$ayr_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Returns information about historical tvl of a defi protocol.
#'
#' @description Wrapper for Python function crypto.defi.dtvl from OpenBB Terminal SDK
#'
#' @param protocol (character length 1) Name of the protocol
#' @export
#* @get /crypto.defi.dtvl
crypto.defi.dtvl <- function(protocol) {
  o <- do.call(what=py$openbb$crypto$defi$dtvl, args=as.list(rlang::call_match())[-1])
  o
}


#' Plots historical TVL of different dApps
#'
#' @description Wrapper for Python function crypto.defi.dtvl_chart from OpenBB Terminal SDK
#'
#' @param dapps (character length 1) dApps to search historical TVL. Should be split by , e.g.: anchor,sushiswap,pancakeswap
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @export
#* @get /crypto.defi.dtvl_chart
crypto.defi.dtvl_chart <- function(dapps = "", export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$crypto$defi$dtvl_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get terra blockchain account growth history [Source: https://fcd.terra.dev/swagger]
#'
#' @description Wrapper for Python function crypto.defi.gacc from OpenBB Terminal SDK
#'
#' @param cumulative (logical length 1) distinguish between periodical and cumulative account growth data
#' @examples
#' crypto.defi.gacc(cumulative=TRUE)
#' @export
#* @get /crypto.defi.gacc
crypto.defi.gacc <- function(cumulative = TRUE) {
  o <- do.call(what=py$openbb$crypto$defi$gacc, args=as.list(rlang::call_match())[-1])
  o
}


#' Plots terra blockchain account growth history [Source: https://fcd.terra.dev/swagger]
#'
#' @description Wrapper for Python function crypto.defi.gacc_chart from OpenBB Terminal SDK
#'
#' @param kind (character length 1) display total account count or active account count. One from list [active, total]
#' @param cumulative (logical length 1) Flag to show cumulative or discrete values. For active accounts only discrete value are available.
#' @param limit (integer length 1) Number of records to display
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.defi.gacc_chart(limit=90, kind='total', cumulative=FALSE)
#' @export
#* @get /crypto.defi.gacc_chart
crypto.defi.gacc_chart <- function(kind = "total", cumulative = FALSE, limit = 90, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$crypto$defi$gacc_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Display top dApps (in terms of TVL) grouped by chain.
#'
#' @description Wrapper for Python function crypto.defi.gdapps from OpenBB Terminal SDK
#'
#' @param limit (integer length 1) Number of top dApps to display
#' @examples
#' crypto.defi.gdapps(limit=50)
#' @export
#* @get /crypto.defi.gdapps
crypto.defi.gdapps <- function(limit = 50) {
  o <- do.call(what=py$openbb$crypto$defi$gdapps, args=as.list(rlang::call_match())[-1])
  o
}


#' Plots top dApps (in terms of TVL) grouped by chain.
#'
#' @description Wrapper for Python function crypto.defi.gdapps_chart from OpenBB Terminal SDK
#'
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @export
#* @get /crypto.defi.gdapps_chart
crypto.defi.gdapps_chart <- function(limit = 50, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$crypto$defi$gdapps_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get terra blockchain governance proposals list [Source: https://fcd.terra.dev/swagger]
#'
#' @description Wrapper for Python function crypto.defi.gov_proposals from OpenBB Terminal SDK
#'
#' @param status (character length 1) status of proposal, one from list: ['Voting','Deposit','Passed','Rejected']
#' @param sortby (character length 1) Key by which to sort data
#' @param ascend (logical length 1) Flag to sort data ascending
#' @param limit (integer length 1) Number of records to display
#' @examples
#' crypto.defi.gov_proposals(sortby='id', ascend=TRUE, limit=10)
#' @export
#* @get /crypto.defi.gov_proposals
crypto.defi.gov_proposals <- function(status = "", sortby = "id", ascend = TRUE, limit = 10) {
  o <- do.call(what=py$openbb$crypto$defi$gov_proposals, args=as.list(rlang::call_match())[-1])
  o
}


#' Prints table showing terra blockchain governance proposals list [Source: https://fcd.terra.dev/swagger]
#'
#' @description Wrapper for Python function crypto.defi.gov_proposals_chart from OpenBB Terminal SDK
#'
#' @param limit (integer length 1) Number of records to display
#' @param status (character length 1) status of proposal, one from list: ['Voting','Deposit','Passed','Rejected']
#' @param sortby (character length 1) Key by which to sort data
#' @param ascend (logical length 1) Flag to sort data ascend
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.defi.gov_proposals_chart(limit=10, status='all', sortby='id', ascend=TRUE)
#' @export
#* @get /crypto.defi.gov_proposals_chart
crypto.defi.gov_proposals_chart <- function(limit = 10, status = "all", sortby = "id", ascend = TRUE, export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$defi$gov_proposals_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Returns information about listed DeFi protocols, their current TVL and changes to it in the last hour/day/week.
#'
#' @description Wrapper for Python function crypto.defi.ldapps from OpenBB Terminal SDK
#'
#' @param limit (integer length 1) The number of dApps to display
#' @param sortby (character length 1) Key by which to sort data
#' @param ascend (logical length 1) Flag to sort data descending
#' @param description (logical length 1) Flag to display description of protocol
#' @param drop_chain (logical length 1) Whether to drop the chain column
#' @examples
#' crypto.defi.ldapps(limit=100, ascend=FALSE, description=FALSE, drop_chain=TRUE)
#' @export
#* @get /crypto.defi.ldapps
crypto.defi.ldapps <- function(limit = 100, sortby = "", ascend = FALSE, description = FALSE, drop_chain = TRUE) {
  o <- do.call(what=py$openbb$crypto$defi$ldapps, args=as.list(rlang::call_match())[-1])
  o
}


#' Prints table showing information about listed DeFi protocols, their current TVL and changes to it in
#'
#' @description Wrapper for Python function crypto.defi.ldapps_chart from OpenBB Terminal SDK
#'
#' @param sortby (character length 1) Key by which to sort data
#' @param limit (integer length 1) Number of records to display
#' @param ascend (logical length 1) Flag to sort data descending
#' @param description (logical length 1) Flag to display description of protocol
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.defi.ldapps_chart(limit=20, ascend=FALSE, description=FALSE)
#' @export
#* @get /crypto.defi.ldapps_chart
crypto.defi.ldapps_chart <- function(sortby, limit = 20, ascend = FALSE, description = FALSE, export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$defi$ldapps_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get supply history of the Terra ecosystem
#'
#' @description Wrapper for Python function crypto.defi.luna_supply from OpenBB Terminal SDK
#'
#' @param supply_type (character length 1) Supply type to unpack json
#' @param days (integer length 1) Day count to fetch data
#' @examples
#' crypto.defi.luna_supply(supply_type='lunaSupplyChallengeStats', days=30)
#' @export
#* @get /crypto.defi.luna_supply
crypto.defi.luna_supply <- function(supply_type = "lunaSupplyChallengeStats", days = 30) {
  o <- do.call(what=py$openbb$crypto$defi$luna_supply, args=as.list(rlang::call_match())[-1])
  o
}


#' Plots and prints table showing Luna circulating supply stats
#'
#' @description Wrapper for Python function crypto.defi.luna_supply_chart from OpenBB Terminal SDK
#'
#' @param days (integer length 1) Number of days
#' @param export (character length 1) Export type
#' @param supply_type (character length 1) Supply type to unpack json
#' @param limit (integer length 1) Number of results display on the terminal
#'     Default: 5
#' @examples
#' crypto.defi.luna_supply_chart(days=30, supply_type='lunaSupplyChallengeStats', limit=5)
#' @export
#* @get /crypto.defi.luna_supply_chart
crypto.defi.luna_supply_chart <- function(days = 30, export = "", sheet_name, supply_type = "lunaSupplyChallengeStats", limit = 5, external_axes) {
  o <- do.call(what=py$openbb$crypto$defi$luna_supply_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Scrape all substack newsletters from url list.
#'
#' @description Wrapper for Python function crypto.defi.newsletters from OpenBB Terminal SDK
#'
#' @export
#* @get /crypto.defi.newsletters
crypto.defi.newsletters <- function() {
  o <- do.call(what=py$openbb$crypto$defi$newsletters, args=as.list(rlang::call_match())[-1])
  o
}


#' Prints table showing DeFi related substack newsletters.
#'
#' @description Wrapper for Python function crypto.defi.newsletters_chart from OpenBB Terminal SDK
#'
#' @param limit (integer length 1) Number of records to display
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.defi.newsletters_chart(limit=10)
#' @export
#* @get /crypto.defi.newsletters_chart
crypto.defi.newsletters_chart <- function(limit = 10, export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$defi$newsletters_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get lastly added trade-able pairs on Uniswap with parameters like:
#'
#' @description Wrapper for Python function crypto.defi.pairs from OpenBB Terminal SDK
#'
#' @param last_days (integer length 1) How many days back to look for added pairs.
#' @param min_volume (integer length 1) Minimum volume
#' @param min_liquidity (integer length 1) Minimum liquidity
#' @param min_tx (integer length 1) Minimum number of transactions done in given pool.
#' @examples
#' crypto.defi.pairs(last_days=14, min_volume=100, min_liquidity=0, min_tx=100)
#' @export
#* @get /crypto.defi.pairs
crypto.defi.pairs <- function(last_days = 14, min_volume = 100, min_liquidity = 0, min_tx = 100) {
  o <- do.call(what=py$openbb$crypto$defi$pairs, args=as.list(rlang::call_match())[-1])
  o
}


#' Prints table showing Lastly added pairs on Uniswap DEX.
#'
#' @description Wrapper for Python function crypto.defi.pairs_chart from OpenBB Terminal SDK
#'
#' @param limit (integer length 1) Number of records to display
#' @param days (integer length 1) Number of days the pair has been active,
#' @param min_volume (integer length 1) Minimum trading volume,
#' @param min_liquidity (integer length 1) Minimum liquidity
#' @param min_tx (integer length 1) Minimum number of transactions
#' @param sortby (character length 1) Key by which to sort data
#' @param ascend (logical length 1) Flag to sort data descending
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.defi.pairs_chart(limit=20, days=7, min_volume=20, min_liquidity=0, min_tx=100, sortby='created', ascend=FALSE)
#' @export
#* @get /crypto.defi.pairs_chart
crypto.defi.pairs_chart <- function(limit = 20, days = 7, min_volume = 20, min_liquidity = 0, min_tx = 100, sortby = "created", ascend = FALSE, export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$defi$pairs_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get uniswap pools by volume. [Source: https://thegraph.com/en/]
#'
#' @description Wrapper for Python function crypto.defi.pools from OpenBB Terminal SDK
#'
#' @export
#* @get /crypto.defi.pools
crypto.defi.pools <- function() {
  o <- do.call(what=py$openbb$crypto$defi$pools, args=as.list(rlang::call_match())[-1])
  o
}


#' Prints table showing uniswap pools by volume.
#'
#' @description Wrapper for Python function crypto.defi.pools_chart from OpenBB Terminal SDK
#'
#' @param limit (integer length 1) Number of records to display
#' @param sortby (character length 1) Key by which to sort data. The table can be sorted by every of its columns
#'     (see https://bit.ly/3ORagr1 then press ctrl-enter or execute the query).
#' @param ascend (logical length 1) Flag to sort data descending
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.defi.pools_chart(limit=20, sortby='volumeUSD', ascend=TRUE)
#' @export
#* @get /crypto.defi.pools_chart
crypto.defi.pools_chart <- function(limit = 20, sortby = "volumeUSD", ascend = TRUE, export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$defi$pools_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get staking info for provided terra account [Source: https://fcd.terra.dev/swagger]
#'
#' @description Wrapper for Python function crypto.defi.sinfo from OpenBB Terminal SDK
#'
#' @param address (character length 1) terra blockchain address e.g. terra1jvwelvs7rdk6j3mqdztq5tya99w8lxk6l9hcqg
#' @export
#* @get /crypto.defi.sinfo
crypto.defi.sinfo <- function(address = "") {
  o <- do.call(what=py$openbb$crypto$defi$sinfo, args=as.list(rlang::call_match())[-1])
  o
}


#' Prints table showing staking info for provided terra account address [Source: https://fcd.terra.dev/swagger]
#'
#' @description Wrapper for Python function crypto.defi.sinfo_chart from OpenBB Terminal SDK
#'
#' @param address (character length 1) terra blockchain address e.g. terra1jvwelvs7rdk6j3mqdztq5tya99w8lxk6l9hcqg
#' @param limit (integer length 1) Number of records to display
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.defi.sinfo_chart(limit=10)
#' @export
#* @get /crypto.defi.sinfo_chart
crypto.defi.sinfo_chart <- function(address = "", limit = 10, export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$defi$sinfo_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get terra blockchain staking ratio history [Source: https://fcd.terra.dev/swagger]
#'
#' @description Wrapper for Python function crypto.defi.sratio from OpenBB Terminal SDK
#'
#' @param limit (integer length 1) The number of ratios to show
#' @examples
#' crypto.defi.sratio(limit=200)
#' @export
#* @get /crypto.defi.sratio
crypto.defi.sratio <- function(limit = 200) {
  o <- do.call(what=py$openbb$crypto$defi$sratio, args=as.list(rlang::call_match())[-1])
  o
}


#' Plots terra blockchain staking ratio history [Source: https://fcd.terra.dev/v1]
#'
#' @description Wrapper for Python function crypto.defi.sratio_chart from OpenBB Terminal SDK
#'
#' @param limit (integer length 1) Number of records to display
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.defi.sratio_chart(limit=90)
#' @export
#* @get /crypto.defi.sratio_chart
crypto.defi.sratio_chart <- function(limit = 90, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$crypto$defi$sratio_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get terra blockchain staking returns history [Source: https://fcd.terra.dev/v1]
#'
#' @description Wrapper for Python function crypto.defi.sreturn from OpenBB Terminal SDK
#'
#' @param limit (integer length 1) The number of returns to show
#' @examples
#' crypto.defi.sreturn(limit=200)
#' @export
#* @get /crypto.defi.sreturn
crypto.defi.sreturn <- function(limit = 200) {
  o <- do.call(what=py$openbb$crypto$defi$sreturn, args=as.list(rlang::call_match())[-1])
  o
}


#' Plots terra blockchain staking returns history [Source: https://fcd.terra.dev/swagger]
#'
#' @description Wrapper for Python function crypto.defi.sreturn_chart from OpenBB Terminal SDK
#'
#' @param limit (integer length 1) Number of records to display
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.defi.sreturn_chart(limit=90)
#' @export
#* @get /crypto.defi.sreturn_chart
crypto.defi.sreturn_chart <- function(limit = 90, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$crypto$defi$sreturn_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get base statistics about Uniswap DEX. [Source: https://thegraph.com/en/]
#'
#' @description Wrapper for Python function crypto.defi.stats from OpenBB Terminal SDK
#'
#' @export
#* @get /crypto.defi.stats
crypto.defi.stats <- function() {
  o <- do.call(what=py$openbb$crypto$defi$stats, args=as.list(rlang::call_match())[-1])
  o
}


#' Prints table showing base statistics about Uniswap DEX. [Source: https://thegraph.com/en/]
#'
#' @description Wrapper for Python function crypto.defi.stats_chart from OpenBB Terminal SDK
#'
#' @export
#* @get /crypto.defi.stats_chart
crypto.defi.stats_chart <- function(export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$defi$stats_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Returns historical values of the total sum of TVLs from all listed protocols.
#'
#' @description Wrapper for Python function crypto.defi.stvl from OpenBB Terminal SDK
#'
#' @export
#* @get /crypto.defi.stvl
crypto.defi.stvl <- function() {
  o <- do.call(what=py$openbb$crypto$defi$stvl, args=as.list(rlang::call_match())[-1])
  o
}


#' Plots historical values of the total sum of TVLs from all listed protocols.
#'
#' @description Wrapper for Python function crypto.defi.stvl_chart from OpenBB Terminal SDK
#'
#' @param limit (integer length 1) Number of records to display, by default 5
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.defi.stvl_chart(limit=5)
#' @export
#* @get /crypto.defi.stvl_chart
crypto.defi.stvl_chart <- function(limit = 5, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$crypto$defi$stvl_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get the last 100 swaps done on Uniswap [Source: https://thegraph.com/en/]
#'
#' @description Wrapper for Python function crypto.defi.swaps from OpenBB Terminal SDK
#'
#' @param limit (integer length 1) Number of swaps to return. Maximum possible number: 1000.
#' @param sortby (character length 1) Key by which to sort data. The table can be sorted by every of its columns
#'     (see https://api.thegraph.com/subgraphs/name/uniswap/uniswap-v2).
#' @param ascend (logical length 1) Flag to sort data descending
#' @examples
#' crypto.defi.swaps(limit=100, sortby='timestamp', ascend=FALSE)
#' @export
#* @get /crypto.defi.swaps
crypto.defi.swaps <- function(limit = 100, sortby = "timestamp", ascend = FALSE) {
  o <- do.call(what=py$openbb$crypto$defi$swaps, args=as.list(rlang::call_match())[-1])
  o
}


#' Prints table showing last swaps done on Uniswap
#'
#' @description Wrapper for Python function crypto.defi.swaps_chart from OpenBB Terminal SDK
#'
#' @param limit (integer length 1) Number of records to display
#' @param sortby (character length 1) Key by which to sort data. The table can be sorted by every of its columns
#'     (see https://api.thegraph.com/subgraphs/name/uniswap/uniswap-v2).
#' @param ascend (logical length 1) Flag to sort data descending
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.defi.swaps_chart(limit=10, sortby='timestamp', ascend=FALSE)
#' @export
#* @get /crypto.defi.swaps_chart
crypto.defi.swaps_chart <- function(limit = 10, sortby = "timestamp", ascend = FALSE, export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$defi$swaps_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get list of tokens trade-able on Uniswap DEX. [Source: https://thegraph.com/en/]
#'
#' @description Wrapper for Python function crypto.defi.tokens from OpenBB Terminal SDK
#'
#' @param skip (integer length 1) Skip n number of records.
#' @param limit (integer length 1) Show n number of records.
#' @param sortby (character length 1) The column to sort by
#' @param ascend (logical length 1) Whether to sort in ascending order
#' @examples
#' crypto.defi.tokens(skip=0, limit=100, sortby='index', ascend=FALSE)
#' @export
#* @get /crypto.defi.tokens
crypto.defi.tokens <- function(skip = 0, limit = 100, sortby = "index", ascend = FALSE) {
  o <- do.call(what=py$openbb$crypto$defi$tokens, args=as.list(rlang::call_match())[-1])
  o
}


#' Prints table showing tokens trade-able on Uniswap DEX.
#'
#' @description Wrapper for Python function crypto.defi.tokens_chart from OpenBB Terminal SDK
#'
#' @param skip (integer length 1) Number of records to skip
#' @param limit (integer length 1) Number of records to display
#' @param sortby (character length 1) Key by which to sort data
#' @param ascend (logical length 1) Flag to sort data descending
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.defi.tokens_chart(skip=0, limit=20, sortby='index', ascend=FALSE)
#' @export
#* @get /crypto.defi.tokens_chart
crypto.defi.tokens_chart <- function(skip = 0, limit = 20, sortby = "index", ascend = FALSE, export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$defi$tokens_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get information about terra validators [Source: https://fcd.terra.dev/swagger]
#'
#' @description Wrapper for Python function crypto.defi.validators from OpenBB Terminal SDK
#'
#' @param sortby (character length 1) Key by which to sort data. Choose from:
#'     validatorName, tokensAmount, votingPower, commissionRate, status, uptime
#' @param ascend (logical length 1) Flag to sort data descending
#' @export
#* @get /crypto.defi.validators
crypto.defi.validators <- function(sortby = "votingPower", ascend = TRUE) {
  o <- do.call(what=py$openbb$crypto$defi$validators, args=as.list(rlang::call_match())[-1])
  o
}


#' Prints table showing information about terra validators [Source: https://fcd.terra.dev/swagger]
#'
#' @description Wrapper for Python function crypto.defi.validators_chart from OpenBB Terminal SDK
#'
#' @param limit (integer length 1) Number of records to display
#' @param sortby (character length 1) Key by which to sort data. Choose from:
#'     validatorName, tokensAmount, votingPower, commissionRate, status, uptime
#' @param ascend (logical length 1) Flag to sort data descending
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.defi.validators_chart(limit=10, sortby='votingPower', ascend=TRUE)
#' @export
#* @get /crypto.defi.validators_chart
crypto.defi.validators_chart <- function(limit = 10, sortby = "votingPower", ascend = TRUE, export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$defi$validators_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get DeFi Vaults Information. DeFi Vaults are pools of funds with an assigned strategy which main goal is to
#'
#' @description Wrapper for Python function crypto.defi.vaults from OpenBB Terminal SDK
#'
#' @export
#* @get /crypto.defi.vaults
crypto.defi.vaults <- function(chain, protocol, kind, ascend = TRUE, sortby = "apy") {
  o <- do.call(what=py$openbb$crypto$defi$vaults, args=as.list(rlang::call_match())[-1])
  o
}


#' Prints table showing Top DeFi Vaults - pools of funds with an assigned strategy which main goal is to
#'
#' @description Wrapper for Python function crypto.defi.vaults_chart from OpenBB Terminal SDK
#'
#' @param limit (integer length 1) Number of records to display
#' @param sortby (character length 1) Key by which to sort data
#' @param ascend (logical length 1) Flag to sort data descending
#' @param link (logical length 1) Flag to show links
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.defi.vaults_chart(limit=10, sortby='apy', ascend=TRUE, link=FALSE)
#' @export
#* @get /crypto.defi.vaults_chart
crypto.defi.vaults_chart <- function(chain, protocol, kind, limit = 10, sortby = "apy", ascend = TRUE, link = FALSE, export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$defi$vaults_chart, args=as.list(rlang::call_match())[-1])
  o
}


#'
#' @description Wrapper for Python function crypto.disc.about from OpenBB Terminal SDK
#'
#' @export
#* @get /crypto.disc.about
crypto.disc.about <- function() {
  o <- do.call(what=py$openbb$crypto$disc$about, args=as.list(rlang::call_match())[-1])
  o
}


#' Get list of categories keys
#'
#' @description Wrapper for Python function crypto.disc.categories_keys from OpenBB Terminal SDK
#'
#' @export
#* @get /crypto.disc.categories_keys
crypto.disc.categories_keys <- function() {
  o <- do.call(what=py$openbb$crypto$disc$categories_keys, args=as.list(rlang::call_match())[-1])
  o
}


#' Get list of coins available on CoinGecko [Source: CoinGecko]
#'
#' @description Wrapper for Python function crypto.disc.coin_list from OpenBB Terminal SDK
#'
#' @export
#* @get /crypto.disc.coin_list
crypto.disc.coin_list <- function() {
  o <- do.call(what=py$openbb$crypto$disc$coin_list, args=as.list(rlang::call_match())[-1])
  o
}


#' Get N coins from CoinGecko [Source: CoinGecko]
#'
#' @description Wrapper for Python function crypto.disc.coins from OpenBB Terminal SDK
#'
#' @param limit (integer length 1) Number of top coins to grab from CoinGecko
#' @param category (character length 1) Category of the coins we want to retrieve
#' @param sortby (character length 1) Key to sort data
#' @param ascend (logical length 1) Sort data in ascending order
#' @examples
#' crypto.disc.coins(limit=250, sortby='Symbol', ascend=FALSE)
#' @export
#* @get /crypto.disc.coins
crypto.disc.coins <- function(limit = 250, category = "", sortby = "Symbol", ascend = FALSE) {
  o <- do.call(what=py$openbb$crypto$disc$coins, args=as.list(rlang::call_match())[-1])
  o
}


#' Prints table showing top coins [Source: CoinGecko]
#'
#' @description Wrapper for Python function crypto.disc.coins_chart from OpenBB Terminal SDK
#'
#' @param category (character length 1) If no category is passed it will search for all coins. (E.g., smart-contract-platform)
#' @param limit (integer length 1) Number of records to display
#' @param sortby (character length 1) Key to sort data
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @param ascend (logical length 1) Sort data in ascending order
#' @examples
#' crypto.disc.coins_chart(limit=250, sortby='Symbol', ascend=FALSE)
#' @export
#* @get /crypto.disc.coins_chart
crypto.disc.coins_chart <- function(category, limit = 250, sortby = "Symbol", export = "", sheet_name, ascend = FALSE) {
  o <- do.call(what=py$openbb$crypto$disc$coins_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Helper method to get all coins available on binance exchange [Source: CoinGecko]
#'
#' @description Wrapper for Python function crypto.disc.coins_for_given_exchange from OpenBB Terminal SDK
#'
#' @param exchange_id (character length 1) id of exchange
#' @param page (integer length 1) number of page. One page contains 100 records
#' @examples
#' crypto.disc.coins_for_given_exchange(exchange_id='binance', page=1)
#' @export
#* @get /crypto.disc.coins_for_given_exchange
crypto.disc.coins_for_given_exchange <- function(exchange_id = "binance", page = 1) {
  o <- do.call(what=py$openbb$crypto$disc$coins_for_given_exchange, args=as.list(rlang::call_match())[-1])
  o
}


#' Search CoinPaprika. [Source: CoinPaprika]
#'
#' @description Wrapper for Python function crypto.disc.cpsearch from OpenBB Terminal SDK
#'
#' @param query (character length 1) phrase for search
#' @param sortby (character length 1) Key to sort data. The table can be sorted by every of its columns. Refer to
#'     API documentation (see https://api.coinpaprika.com/docs#tag/Tools/paths/~1search/get)
#' @param ascend (logical length 1) Flag to sort data descending
#' @examples
#' crypto.disc.cpsearch(sortby='id', ascend=TRUE)
#' @export
#* @get /crypto.disc.cpsearch
crypto.disc.cpsearch <- function(query, category, modifier, sortby = "id", ascend = TRUE) {
  o <- do.call(what=py$openbb$crypto$disc$cpsearch, args=as.list(rlang::call_match())[-1])
  o
}


#' Prints table showing Search over CoinPaprika. [Source: CoinPaprika]
#'
#' @description Wrapper for Python function crypto.disc.cpsearch_chart from OpenBB Terminal SDK
#'
#' @param query (character length 1) Search query
#' @param category (character length 1) Categories to search: currencies|exchanges|icos|people|tags|all. Default: all
#' @param limit (integer length 1) Number of records to display
#' @param sortby (character length 1) Key to sort data. The table can be sorted by every of its columns. Refer to
#'     API documentation (see https://api.coinpaprika.com/docs#tag/Tools/paths/~1search/get)
#' @param ascend (logical length 1) Flag to sort data descending
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.disc.cpsearch_chart(category='all', limit=10, sortby='id', ascend=TRUE)
#' @export
#* @get /crypto.disc.cpsearch_chart
crypto.disc.cpsearch_chart <- function(query, category = "all", limit = 10, sortby = "id", ascend = TRUE, export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$disc$cpsearch_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Shows Largest Gainers - coins which gain the most in given period. [Source: CoinGecko]
#'
#' @description Wrapper for Python function crypto.disc.gainers from OpenBB Terminal SDK
#'
#' @param interval (character length 1) Time interval by which data is displayed. One from [1h, 24h, 7d, 14d, 30d, 60d, 1y]
#' @param limit (integer length 1) Number of records to display
#' @param sortby (character length 1) Key to sort data. The table can be sorted by every of its columns. Refer to
#'     API documentation (see /coins/markets in https://www.coingecko.com/en/api/documentation)
#' @param ascend (logical length 1) Sort data in ascending order
#' @examples
#' crypto.disc.gainers(interval='1h', limit=50, sortby='market_cap_rank')
#' @export
#* @get /crypto.disc.gainers
crypto.disc.gainers <- function(interval = "1h", limit = 50, sortby = "market_cap_rank", ascend = TRUE) {
  o <- do.call(what=py$openbb$crypto$disc$gainers, args=as.list(rlang::call_match())[-1])
  o
}


#' Prints table showing Largest Gainers - coins which gain the most in given period. [Source: CoinGecko]
#'
#' @description Wrapper for Python function crypto.disc.gainers_chart from OpenBB Terminal SDK
#'
#' @param interval (character length 1) Time period by which data is displayed. One from [1h, 24h, 7d, 14d, 30d, 60d, 1y]
#' @param limit (integer length 1) Number of records to display
#' @param sortby (character length 1) Key to sort data. The table can be sorted by every of its columns. Refer to
#'     API documentation (see /coins/markets in https://www.coingecko.com/en/api/documentation)
#' @param ascend (logical length 1) Sort data in ascending order
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.disc.gainers_chart(interval='1h', limit=20, sortby='market_cap_rank')
#' @export
#* @get /crypto.disc.gainers_chart
crypto.disc.gainers_chart <- function(interval = "1h", limit = 20, sortby = "market_cap_rank", ascend = TRUE, export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$disc$gainers_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Shows Largest Losers - coins which lose the most in given period. [Source: CoinGecko]
#'
#' @description Wrapper for Python function crypto.disc.losers from OpenBB Terminal SDK
#'
#' @param interval (character length 1) Time interval by which data is displayed. One from [1h, 24h, 7d, 14d, 30d, 60d, 1y]
#' @param limit (integer length 1) Number of records to display
#' @param sortby (character length 1) Key to sort data. The table can be sorted by every of its columns. Refer to
#'     API documentation (see /coins/markets in https://www.coingecko.com/en/api/documentation)
#' @param ascend (logical length 1) Sort data in ascending order
#' @examples
#' crypto.disc.losers(interval='1h', limit=50, sortby='market_cap_rank')
#' @export
#* @get /crypto.disc.losers
crypto.disc.losers <- function(interval = "1h", limit = 50, sortby = "market_cap_rank", ascend = TRUE) {
  o <- do.call(what=py$openbb$crypto$disc$losers, args=as.list(rlang::call_match())[-1])
  o
}


#' Prints table showing Largest Losers - coins which lost the most in given period of time. [Source: CoinGecko]
#'
#' @description Wrapper for Python function crypto.disc.losers_chart from OpenBB Terminal SDK
#'
#' @param interval (character length 1) Time period by which data is displayed. One from [1h, 24h, 7d, 14d, 30d, 60d, 1y]
#' @param limit (integer length 1) Number of records to display
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @param sortby (character length 1) Key to sort data. The table can be sorted by every of its columns. Refer to
#'     API documentation (see /coins/markets in https://www.coingecko.com/en/api/documentation)
#' @param ascend (logical length 1) Sort data in ascending order
#' @examples
#' crypto.disc.losers_chart(interval='1h', limit=20, sortby='Market Cap Rank')
#' @export
#* @get /crypto.disc.losers_chart
crypto.disc.losers_chart <- function(interval = "1h", limit = 20, export = "", sheet_name, sortby = "Market Cap Rank", ascend = FALSE) {
  o <- do.call(what=py$openbb$crypto$disc$losers_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get top cryptp coins.
#'
#' @description Wrapper for Python function crypto.disc.top_coins from OpenBB Terminal SDK
#'
#' @param source (character length 1) Source of data, by default "CoinGecko"
#' @param limit (integer length 1) Number of coins to return, by default 10
#' @examples
#' crypto.disc.top_coins(source='CoinGecko', limit=10)
#' @export
#* @get /crypto.disc.top_coins
crypto.disc.top_coins <- function(source = "CoinGecko", limit = 10) {
  o <- do.call(what=py$openbb$crypto$disc$top_coins, args=as.list(rlang::call_match())[-1])
  o
}


#' Get top decentralized applications by daily volume and users [Source: https://dappradar.com/]
#'
#' @description Wrapper for Python function crypto.disc.top_dapps from OpenBB Terminal SDK
#'
#' @param sortby (character length 1) Key by which to sort data
#' @export
#* @get /crypto.disc.top_dapps
crypto.disc.top_dapps <- function(sortby = "", limit = 10) {
  o <- do.call(what=py$openbb$crypto$disc$top_dapps, args=as.list(rlang::call_match())[-1])
  o
}


#' Prints table showing top decentralized exchanges [Source: https://dappradar.com/]
#'
#' @description Wrapper for Python function crypto.disc.top_dapps_chart from OpenBB Terminal SDK
#'
#' @param limit (integer length 1) Number of records to display
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @param sortby (character length 1) Key by which to sort data
#' @examples
#' crypto.disc.top_dapps_chart(limit=10)
#' @export
#* @get /crypto.disc.top_dapps_chart
crypto.disc.top_dapps_chart <- function(limit = 10, export = "", sheet_name, sortby = "") {
  o <- do.call(what=py$openbb$crypto$disc$top_dapps_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get top dexes by daily volume and users [Source: https://dappradar.com/]
#'
#' @description Wrapper for Python function crypto.disc.top_dexes from OpenBB Terminal SDK
#'
#' @param sortby (character length 1) Key by which to sort data
#' @export
#* @get /crypto.disc.top_dexes
crypto.disc.top_dexes <- function(sortby = "", limit = 10) {
  o <- do.call(what=py$openbb$crypto$disc$top_dexes, args=as.list(rlang::call_match())[-1])
  o
}


#' Prints table showing top decentralized exchanges [Source: https://dappradar.com/]
#'
#' @description Wrapper for Python function crypto.disc.top_dexes_chart from OpenBB Terminal SDK
#'
#' @param limit (integer length 1) Number of records to display
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @param sortby (character length 1) Key by which to sort data
#' @examples
#' crypto.disc.top_dexes_chart(limit=10)
#' @export
#* @get /crypto.disc.top_dexes_chart
crypto.disc.top_dexes_chart <- function(limit = 10, export = "", sheet_name, sortby = "") {
  o <- do.call(what=py$openbb$crypto$disc$top_dexes_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get top blockchain games by daily volume and users [Source: https://dappradar.com/]
#'
#' @description Wrapper for Python function crypto.disc.top_games from OpenBB Terminal SDK
#'
#' @param sortby (character length 1) Key by which to sort data
#' @param limit (integer length 1) Number of records to display
#' @examples
#' crypto.disc.top_games(limit=10)
#' @export
#* @get /crypto.disc.top_games
crypto.disc.top_games <- function(sortby = "", limit = 10) {
  o <- do.call(what=py$openbb$crypto$disc$top_games, args=as.list(rlang::call_match())[-1])
  o
}


#' Prints table showing top blockchain games [Source: https://dappradar.com/]
#'
#' @description Wrapper for Python function crypto.disc.top_games_chart from OpenBB Terminal SDK
#'
#' @param limit (integer length 1) Number of records to display
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @param sortby (character length 1) Key by which to sort data
#' @examples
#' crypto.disc.top_games_chart(limit=10)
#' @export
#* @get /crypto.disc.top_games_chart
crypto.disc.top_games_chart <- function(limit = 10, export = "", sheet_name, sortby = "") {
  o <- do.call(what=py$openbb$crypto$disc$top_games_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get top nft collections [Source: https://dappradar.com/]
#'
#' @description Wrapper for Python function crypto.disc.top_nfts from OpenBB Terminal SDK
#'
#' @param sortby (character length 1) Key by which to sort data
#' @export
#* @get /crypto.disc.top_nfts
crypto.disc.top_nfts <- function(sortby = "", limit = 10) {
  o <- do.call(what=py$openbb$crypto$disc$top_nfts, args=as.list(rlang::call_match())[-1])
  o
}


#' Prints table showing top nft collections [Source: https://dappradar.com/]
#'
#' @description Wrapper for Python function crypto.disc.top_nfts_chart from OpenBB Terminal SDK
#'
#' @param limit (integer length 1) Number of records to display
#' @param sortby (character length 1) Key by which to sort data
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.disc.top_nfts_chart(limit=10)
#' @export
#* @get /crypto.disc.top_nfts_chart
crypto.disc.top_nfts_chart <- function(limit = 10, sortby = "", export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$disc$top_nfts_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Returns trending coins [Source: CoinGecko]
#'
#' @description Wrapper for Python function crypto.disc.trending from OpenBB Terminal SDK
#'
#' @export
#* @get /crypto.disc.trending
crypto.disc.trending <- function() {
  o <- do.call(what=py$openbb$crypto$disc$trending, args=as.list(rlang::call_match())[-1])
  o
}


#' Prints table showing trending coins [Source: CoinGecko]
#'
#' @description Wrapper for Python function crypto.disc.trending_chart from OpenBB Terminal SDK
#'
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @export
#* @get /crypto.disc.trending_chart
crypto.disc.trending_chart <- function(export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$disc$trending_chart, args=as.list(rlang::call_match())[-1])
  o
}


#'
#' @description Wrapper for Python function crypto.nft.about from OpenBB Terminal SDK
#'
#' @export
#* @get /crypto.nft.about
crypto.nft.about <- function() {
  o <- do.call(what=py$openbb$crypto$nft$about, args=as.list(rlang::call_match())[-1])
  o
}


#' Get nft collections [Source: https://nftpricefloor.com/]
#'
#' @description Wrapper for Python function crypto.nft.collections from OpenBB Terminal SDK
#'
#' @export
#* @get /crypto.nft.collections
crypto.nft.collections <- function() {
  o <- do.call(what=py$openbb$crypto$nft$collections, args=as.list(rlang::call_match())[-1])
  o
}


#' Display NFT collections. [Source: https://nftpricefloor.com/]
#'
#' @description Wrapper for Python function crypto.nft.collections_chart from OpenBB Terminal SDK
#'
#' @param show_fp (logical length 1) Show NFT Price Floor for top collections
#' @param limit (integer length 1) Number of NFT collections to display
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.nft.collections_chart(show_fp=FALSE, limit=5)
#' @export
#* @get /crypto.nft.collections_chart
crypto.nft.collections_chart <- function(show_fp = FALSE, show_sales = FALSE, limit = 5, export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$nft$collections_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get nft collections [Source: https://nftpricefloor.com/]
#'
#' @description Wrapper for Python function crypto.nft.fp from OpenBB Terminal SDK
#'
#' @param slug (character length 1) nft collection slug
#' @export
#* @get /crypto.nft.fp
crypto.nft.fp <- function(slug) {
  o <- do.call(what=py$openbb$crypto$nft$fp, args=as.list(rlang::call_match())[-1])
  o
}


#' Display NFT collection floor price over time. [Source: https://nftpricefloor.com/]
#'
#' @description Wrapper for Python function crypto.nft.fp_chart from OpenBB Terminal SDK
#'
#' @param slug (character length 1) NFT collection slug
#' @param limit (integer length 1) Number of raw data to show
#' @param export (character length 1) Format to export data
#' @param raw (logical length 1) Flag to display raw data
#' @examples
#' crypto.nft.fp_chart(raw=FALSE, limit=10)
#' @export
#* @get /crypto.nft.fp_chart
crypto.nft.fp_chart <- function(slug, limit = 10, export = "", sheet_name, external_axes, raw = FALSE) {
  o <- do.call(what=py$openbb$crypto$nft$fp_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get stats of a nft collection [Source: opensea.io]
#'
#' @description Wrapper for Python function crypto.nft.stats from OpenBB Terminal SDK
#'
#' @param slug (character length 1) Opensea collection slug. If the name of the collection is Mutant Ape Yacht Club the slug is mutant-ape-yacht-club
#' @export
#* @get /crypto.nft.stats
crypto.nft.stats <- function(slug) {
  o <- do.call(what=py$openbb$crypto$nft$stats, args=as.list(rlang::call_match())[-1])
  o
}


#' Prints table showing collection stats. [Source: opensea.io]
#'
#' @description Wrapper for Python function crypto.nft.stats_chart from OpenBB Terminal SDK
#'
#' @param slug (character length 1) Opensea collection slug.
#'     If the name of the collection is Mutant Ape Yacht Club the slug is mutant-ape-yacht-club
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @export
#* @get /crypto.nft.stats_chart
crypto.nft.stats_chart <- function(slug, export, sheet_name) {
  o <- do.call(what=py$openbb$crypto$nft$stats_chart, args=as.list(rlang::call_match())[-1])
  o
}


#'
#' @description Wrapper for Python function crypto.onchain.about from OpenBB Terminal SDK
#'
#' @export
#* @get /crypto.onchain.about
crypto.onchain.about <- function() {
  o <- do.call(what=py$openbb$crypto$onchain$about, args=as.list(rlang::call_match())[-1])
  o
}


#' Get an average bid and ask prices, average spread for given crypto pair for chosen time period.
#'
#' @description Wrapper for Python function crypto.onchain.baas from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) ERC20 token symbol
#' @param to_symbol (character length 1) Quoted currency.
#' @param limit (integer length 1) Last n days to query data
#' @param sortby (character length 1) Key by which to sort data
#' @param ascend (logical length 1) Flag to sort data ascending
#' @examples
#' crypto.onchain.baas(symbol='WETH', to_symbol='USDT', limit=10, sortby='date', ascend=TRUE)
#' @export
#* @get /crypto.onchain.baas
crypto.onchain.baas <- function(symbol = "WETH", to_symbol = "USDT", limit = 10, sortby = "date", ascend = TRUE) {
  o <- do.call(what=py$openbb$crypto$onchain$baas, args=as.list(rlang::call_match())[-1])
  o
}


#' Prints table showing an average bid and ask prices, average spread for given crypto pair for chosen
#'
#' @description Wrapper for Python function crypto.onchain.baas_chart from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) ERC20 token symbol
#' @param to_symbol (character length 1) Quoted currency.
#' @param limit (integer length 1) Last n days to query data
#' @param sortby (character length 1) Key by which to sort data
#' @param ascend (logical length 1) Flag to sort data ascending
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.onchain.baas_chart(symbol='WETH', to_symbol='USDT', limit=10, sortby='date', ascend=TRUE)
#' @export
#* @get /crypto.onchain.baas_chart
crypto.onchain.baas_chart <- function(symbol = "WETH", to_symbol = "USDT", limit = 10, sortby = "date", ascend = TRUE, export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$onchain$baas_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get info about tokens on you ethereum blockchain balance. Eth balance, balance of all tokens which
#'
#' @description Wrapper for Python function crypto.onchain.balance from OpenBB Terminal SDK
#'
#' @param address (character length 1) Blockchain balance e.g. 0x3cD751E6b0078Be393132286c442345e5DC49699
#' @param sortby (character length 1) Key to sort by.
#' @param ascend (logical length 1) Sort in descending order.
#' @examples
#' crypto.onchain.balance(sortby='index', ascend='False')
#' @export
#* @get /crypto.onchain.balance
crypto.onchain.balance <- function(address, sortby = "index", ascend = FALSE) {
  o <- do.call(what=py$openbb$crypto$onchain$balance, args=as.list(rlang::call_match())[-1])
  o
}


#' Display info about tokens for given ethereum blockchain balance e.g. ETH balance,
#'
#' @description Wrapper for Python function crypto.onchain.balance_chart from OpenBB Terminal SDK
#'
#' @param address (character length 1) Ethereum balance.
#' @param limit (integer length 1) Limit of transactions. Maximum 100
#' @param sortby (character length 1) Key to sort by.
#' @param ascend (logical length 1) Sort in descending order.
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.onchain.balance_chart(limit=15, sortby='index', ascend='False')
#' @export
#* @get /crypto.onchain.balance_chart
crypto.onchain.balance_chart <- function(address, limit = 15, sortby = "index", ascend = FALSE, export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$onchain$balance_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Returns BTC circulating supply [Source: https://api.blockchain.info/]
#'
#' @description Wrapper for Python function crypto.onchain.btc_supply from OpenBB Terminal SDK
#'
#' @export
#* @get /crypto.onchain.btc_supply
crypto.onchain.btc_supply <- function() {
  o <- do.call(what=py$openbb$crypto$onchain$btc_supply, args=as.list(rlang::call_match())[-1])
  o
}


#' Returns BTC circulating supply [Source: https://api.blockchain.info/]
#'
#' @description Wrapper for Python function crypto.onchain.btc_supply_chart from OpenBB Terminal SDK
#'
#' @param start_date (character length 1) Initial date, format YYYY-MM-DD
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.onchain.btc_supply_chart(start_date='2010-01-01')
#' @export
#* @get /crypto.onchain.btc_supply_chart
crypto.onchain.btc_supply_chart <- function(start_date = "2010-01-01", end_date, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$crypto$onchain$btc_supply_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Returns BTC confirmed transactions [Source: https://api.blockchain.info/]
#'
#' @description Wrapper for Python function crypto.onchain.btc_transac from OpenBB Terminal SDK
#'
#' @export
#* @get /crypto.onchain.btc_transac
crypto.onchain.btc_transac <- function() {
  o <- do.call(what=py$openbb$crypto$onchain$btc_transac, args=as.list(rlang::call_match())[-1])
  o
}


#' Returns BTC confirmed transactions [Source: https://api.blockchain.info/]
#'
#' @description Wrapper for Python function crypto.onchain.btc_transac_chart from OpenBB Terminal SDK
#'
#' @param start_date (character length 1) Initial date, format YYYY-MM-DD
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.onchain.btc_transac_chart(start_date='2010-01-01')
#' @export
#* @get /crypto.onchain.btc_transac_chart
crypto.onchain.btc_transac_chart <- function(start_date = "2010-01-01", end_date, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$crypto$onchain$btc_transac_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Returns BTC block data in json format. [Source: https://blockchain.info/]
#'
#' @description Wrapper for Python function crypto.onchain.btcsingleblock from OpenBB Terminal SDK
#'
#' @export
#* @get /crypto.onchain.btcsingleblock
crypto.onchain.btcsingleblock <- function(blockhash) {
  o <- do.call(what=py$openbb$crypto$onchain$btcsingleblock, args=as.list(rlang::call_match())[-1])
  o
}


#' Returns BTC block data. [Source: https://api.blockchain.info/]
#'
#' @description Wrapper for Python function crypto.onchain.btcsingleblock_chart from OpenBB Terminal SDK
#'
#' @param blockhash (character length 1) Hash of the block you are looking for.
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @export
#* @get /crypto.onchain.btcsingleblock_chart
crypto.onchain.btcsingleblock_chart <- function(blockhash, export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$onchain$btcsingleblock_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get list of trades on Decentralized Exchanges monthly aggregated.
#'
#' @description Wrapper for Python function crypto.onchain.dex_trades_monthly from OpenBB Terminal SDK
#'
#' @param trade_amount_currency (character length 1) Currency of displayed trade amount. Default: USD
#' @param limit (integer length 1) Last n days to query data. Maximum 365 (bigger numbers can cause timeouts
#'     on server side)
#' @param ascend (logical length 1) Flag to sort data ascending
#' @examples
#' crypto.onchain.dex_trades_monthly(trade_amount_currency='USD', limit=90, ascend=TRUE)
#' @export
#* @get /crypto.onchain.dex_trades_monthly
crypto.onchain.dex_trades_monthly <- function(trade_amount_currency = "USD", limit = 90, ascend = TRUE) {
  o <- do.call(what=py$openbb$crypto$onchain$dex_trades_monthly, args=as.list(rlang::call_match())[-1])
  o
}


#' Get daily volume for given pair [Source: https://graphql.bitquery.io/]
#'
#' @description Wrapper for Python function crypto.onchain.dvcp from OpenBB Terminal SDK
#'
#' @param limit (integer length 1) Last n days to query data
#' @param symbol (character length 1) ERC20 token symbol
#' @param to_symbol (character length 1) Quote currency.
#' @param sortby (character length 1) Key by which to sort data
#' @param ascend (logical length 1) Flag to sort data ascending
#' @examples
#' crypto.onchain.dvcp(limit=100, symbol='UNI', to_symbol='USDT', sortby='date', ascend=TRUE)
#' @export
#* @get /crypto.onchain.dvcp
crypto.onchain.dvcp <- function(limit = 100, symbol = "UNI", to_symbol = "USDT", sortby = "date", ascend = TRUE) {
  o <- do.call(what=py$openbb$crypto$onchain$dvcp, args=as.list(rlang::call_match())[-1])
  o
}


#' Prints table showing daily volume for given pair
#'
#' @description Wrapper for Python function crypto.onchain.dvcp_chart from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) ERC20 token symbol or address
#' @param to_symbol (character length 1) Quote currency.
#' @param limit (integer length 1) Number of records to display
#' @param sortby (character length 1) Key by which to sort data
#' @param ascend (logical length 1) Flag to sort data ascending
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.onchain.dvcp_chart(symbol='WBTC', to_symbol='USDT', limit=20, sortby='date', ascend=TRUE)
#' @export
#* @get /crypto.onchain.dvcp_chart
crypto.onchain.dvcp_chart <- function(symbol = "WBTC", to_symbol = "USDT", limit = 20, sortby = "date", ascend = TRUE, export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$onchain$dvcp_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Helper method that loads ~1500 most traded erc20 token.
#'
#' @description Wrapper for Python function crypto.onchain.erc20_tokens from OpenBB Terminal SDK
#'
#' @export
#* @get /crypto.onchain.erc20_tokens
crypto.onchain.erc20_tokens <- function() {
  o <- do.call(what=py$openbb$crypto$onchain$erc20_tokens, args=as.list(rlang::call_match())[-1])
  o
}


#' Returns the most recent Ethereum gas fees in gwei
#'
#' @description Wrapper for Python function crypto.onchain.gwei from OpenBB Terminal SDK
#'
#' @export
#* @get /crypto.onchain.gwei
crypto.onchain.gwei <- function() {
  o <- do.call(what=py$openbb$crypto$onchain$gwei, args=as.list(rlang::call_match())[-1])
  o
}


#' Current gwei fees
#'
#' @description Wrapper for Python function crypto.onchain.gwei_chart from OpenBB Terminal SDK
#'
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @export
#* @get /crypto.onchain.gwei_chart
crypto.onchain.gwei_chart <- function(export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$onchain$gwei_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get information about balance historical transactions. [Source: Ethplorer]
#'
#' @description Wrapper for Python function crypto.onchain.hist from OpenBB Terminal SDK
#'
#' @param address (character length 1) Blockchain balance e.g. 0x3cD751E6b0078Be393132286c442345e5DC49699
#' @param sortby (character length 1) Key to sort by.
#' @param ascend (logical length 1) Sort in ascending order.
#' @examples
#' crypto.onchain.hist(sortby='timestamp', ascend='True')
#' @export
#* @get /crypto.onchain.hist
crypto.onchain.hist <- function(address, sortby = "timestamp", ascend = TRUE) {
  o <- do.call(what=py$openbb$crypto$onchain$hist, args=as.list(rlang::call_match())[-1])
  o
}


#' Display information about balance historical transactions. [Source: Ethplorer]
#'
#' @description Wrapper for Python function crypto.onchain.hist_chart from OpenBB Terminal SDK
#'
#' @param address (character length 1) Ethereum blockchain balance e.g. 0x3cD751E6b0078Be393132286c442345e5DC49699
#' @param limit (integer length 1) Limit of transactions. Maximum 100
#' @param sortby (character length 1) Key to sort by.
#' @param ascend (logical length 1) Sort in ascending order.
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.onchain.hist_chart(limit=10, sortby='timestamp', ascend='True')
#' @export
#* @get /crypto.onchain.hist_chart
crypto.onchain.hist_chart <- function(address, limit = 10, sortby = "timestamp", ascend = TRUE, export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$onchain$hist_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get info about top token holders. [Source: Ethplorer]
#'
#' @description Wrapper for Python function crypto.onchain.holders from OpenBB Terminal SDK
#'
#' @param address (character length 1) Token balance e.g. 0x1f9840a85d5aF5bf1D1762F925BDADdC4201F984
#' @param sortby (character length 1) Key to sort by.
#' @param ascend (logical length 1) Sort in descending order.
#' @examples
#' crypto.onchain.holders(sortby='balance', ascend='True')
#' @export
#* @get /crypto.onchain.holders
crypto.onchain.holders <- function(address, sortby = "balance", ascend = TRUE) {
  o <- do.call(what=py$openbb$crypto$onchain$holders, args=as.list(rlang::call_match())[-1])
  o
}


#' Display info about top ERC20 token holders. [Source: Ethplorer]
#'
#' @description Wrapper for Python function crypto.onchain.holders_chart from OpenBB Terminal SDK
#'
#' @param address (character length 1) Token balance e.g. 0x1f9840a85d5aF5bf1D1762F925BDADdC4201F984
#' @param limit (integer length 1) Limit of transactions. Maximum 100
#' @param sortby (character length 1) Key to sort by.
#' @param ascend (logical length 1) Sort in descending order.
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.onchain.holders_chart(limit=10, sortby='balance', ascend='True')
#' @export
#* @get /crypto.onchain.holders_chart
crypto.onchain.holders_chart <- function(address, limit = 10, sortby = "balance", ascend = TRUE, export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$onchain$holders_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Returns dataframe with mean hashrate of btc or eth blockchain and symbol price
#'
#' @description Wrapper for Python function crypto.onchain.hr from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Blockchain to check hashrate (BTC or ETH)
#' @param interval (character length 1) Interval frequency (e.g., 24h)
#' @param start_date (character length 1) Initial date, format YYYY-MM-DD
#' @examples
#' crypto.onchain.hr(symbol='AMZN', start_date='2010-01-01', interval='24h')
#' @export
#* @get /crypto.onchain.hr
crypto.onchain.hr <- function(symbol, interval = "24h", start_date = "2010-01-01", end_date) {
  o <- do.call(what=py$openbb$crypto$onchain$hr, args=as.list(rlang::call_match())[-1])
  o
}


#' Plots dataframe with mean hashrate of btc or eth blockchain and symbol price.
#'
#' @description Wrapper for Python function crypto.onchain.hr_chart from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Blockchain to check mean hashrate (BTC or ETH)
#' @param start_date (character length 1) Initial date, format YYYY-MM-DD
#' @param interval (character length 1) Interval frequency (possible values are: 24, 1w, 1month)
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.onchain.hr_chart(symbol='AMZN', start_date='2010-01-01', interval='24h')
#' @export
#* @get /crypto.onchain.hr_chart
crypto.onchain.hr_chart <- function(symbol, start_date = "2010-01-01", end_date, interval = "24h", export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$crypto$onchain$hr_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get info about ERC20 token. [Source: Ethplorer]
#'
#' @description Wrapper for Python function crypto.onchain.info from OpenBB Terminal SDK
#'
#' @param address (Python type: inspect._empty) Token balance e.g. 0x1f9840a85d5aF5bf1D1762F925BDADdC4201F984
#' @export
#* @get /crypto.onchain.info
crypto.onchain.info <- function(address) {
  o <- do.call(what=py$openbb$crypto$onchain$info, args=as.list(rlang::call_match())[-1])
  o
}


#' Display info about ERC20 token. [Source: Ethplorer]
#'
#' @description Wrapper for Python function crypto.onchain.info_chart from OpenBB Terminal SDK
#'
#' @param address (character length 1) Token balance e.g. 0x1f9840a85d5aF5bf1D1762F925BDADdC4201F984
#' @param social (logical length 1) Flag to display social media links
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.onchain.info_chart(social=FALSE)
#' @export
#* @get /crypto.onchain.info_chart
crypto.onchain.info_chart <- function(address, social = FALSE, export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$onchain$info_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get trades on Decentralized Exchanges aggregated by DEX [Source: https://graphql.bitquery.io/]
#'
#' @description Wrapper for Python function crypto.onchain.lt from OpenBB Terminal SDK
#'
#' @param trade_amount_currency (character length 1) Currency of displayed trade amount. Default: USD
#' @param limit (integer length 1) Last n days to query data. Maximum 365 (bigger numbers can cause timeouts
#'     on server side)
#' @param sortby (character length 1) Key by which to sort data
#' @param ascend (logical length 1) Flag to sort data ascending
#' @examples
#' crypto.onchain.lt(trade_amount_currency='USD', limit=90, sortby='tradeAmount', ascend=TRUE)
#' @export
#* @get /crypto.onchain.lt
crypto.onchain.lt <- function(trade_amount_currency = "USD", limit = 90, sortby = "tradeAmount", ascend = TRUE) {
  o <- do.call(what=py$openbb$crypto$onchain$lt, args=as.list(rlang::call_match())[-1])
  o
}


#' Prints table showing Trades on Decentralized Exchanges aggregated by DEX or Month
#'
#' @description Wrapper for Python function crypto.onchain.lt_chart from OpenBB Terminal SDK
#'
#' @param trade_amount_currency (character length 1) Currency of displayed trade amount. Default: USD
#' @param kind (character length 1) Aggregate trades by dex or time
#' @param limit (integer length 1) Number of records to display
#' @param days (integer length 1) Last n days to query data. Maximum 365 (bigger numbers can cause timeouts
#'     on server side)
#' @param sortby (character length 1) Key by which to sort data
#' @param ascend (logical length 1) Flag to sort data ascending
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.onchain.lt_chart(kind='dex', trade_amount_currency='USD', limit=20, sortby='tradeAmount', ascend=TRUE, days=90)
#' @export
#* @get /crypto.onchain.lt_chart
crypto.onchain.lt_chart <- function(trade_amount_currency = "USD", kind = "dex", limit = 20, days = 90, sortby = "tradeAmount", ascend = TRUE, export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$onchain$lt_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get token historical prices with volume and market cap, and average price. [Source: Ethplorer]
#'
#' @description Wrapper for Python function crypto.onchain.prices from OpenBB Terminal SDK
#'
#' @param address (character length 1) Token e.g. 0xf3db5fa2c66b7af3eb0c0b782510816cbe4813b8
#' @param sortby (character length 1) Key to sort by.
#' @param ascend (logical length 1) Sort in descending order.
#' @examples
#' crypto.onchain.prices(sortby='date', ascend='False')
#' @export
#* @get /crypto.onchain.prices
crypto.onchain.prices <- function(address, sortby = "date", ascend = FALSE) {
  o <- do.call(what=py$openbb$crypto$onchain$prices, args=as.list(rlang::call_match())[-1])
  o
}


#' Display token historical prices with volume and market cap, and average price.
#'
#' @description Wrapper for Python function crypto.onchain.prices_chart from OpenBB Terminal SDK
#'
#' @param address (character length 1) Token balance e.g. 0x1f9840a85d5aF5bf1D1762F925BDADdC4201F984
#' @param limit (integer length 1) Limit of transactions. Maximum 100
#' @param sortby (character length 1) Key to sort by.
#' @param ascend (logical length 1) Sort in descending order.
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.onchain.prices_chart(limit=30, sortby='date', ascend='False')
#' @export
#* @get /crypto.onchain.prices_chart
crypto.onchain.prices_chart <- function(address, limit = 30, sortby = "date", ascend = FALSE, export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$onchain$prices_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Helper methods for querying graphql api. [Source: https://bitquery.io/]
#'
#' @description Wrapper for Python function crypto.onchain.query_graph from OpenBB Terminal SDK
#'
#' @param url (character length 1) Endpoint url
#' @param query (character length 1) Graphql query
#' @export
#* @get /crypto.onchain.query_graph
crypto.onchain.query_graph <- function(url, query) {
  o <- do.call(what=py$openbb$crypto$onchain$query_graph, args=as.list(rlang::call_match())[-1])
  o
}


#' Get info about token historical transactions. [Source: Ethplorer]
#'
#' @description Wrapper for Python function crypto.onchain.th from OpenBB Terminal SDK
#'
#' @param address (character length 1) Token e.g. 0xf3db5fa2c66b7af3eb0c0b782510816cbe4813b8
#' @param sortby (character length 1) Key to sort by.
#' @param ascend (logical length 1) Sort in descending order.
#' @examples
#' crypto.onchain.th(sortby='timestamp', ascend='False')
#' @export
#* @get /crypto.onchain.th
crypto.onchain.th <- function(address, sortby = "timestamp", ascend = FALSE) {
  o <- do.call(what=py$openbb$crypto$onchain$th, args=as.list(rlang::call_match())[-1])
  o
}


#' Display info about token history. [Source: Ethplorer]
#'
#' @description Wrapper for Python function crypto.onchain.th_chart from OpenBB Terminal SDK
#'
#' @param address (character length 1) Token balance e.g. 0x1f9840a85d5aF5bf1D1762F925BDADdC4201F984
#' @param limit (integer length 1) Limit of transactions. Maximum 100
#' @param sortby (character length 1) Key to sort by.
#' @param ascend (logical length 1) Sort in descending order.
#' @param hash_ (logical length 1) Flag to show transaction hash.
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.onchain.th_chart(limit=10, sortby='timestamp', ascend='False', hash_=FALSE)
#' @export
#* @get /crypto.onchain.th_chart
crypto.onchain.th_chart <- function(address, limit = 10, sortby = "timestamp", ascend = FALSE, hash_ = FALSE, export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$onchain$th_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Helper methods that gets token decimals number. [Source: Ethplorer]
#'
#' @description Wrapper for Python function crypto.onchain.token_decimals from OpenBB Terminal SDK
#'
#' @param address (character length 1) Blockchain balance e.g. 0x1f9840a85d5af5bf1d1762f925bdaddc4201f984
#' @export
#* @get /crypto.onchain.token_decimals
crypto.onchain.token_decimals <- function(address) {
  o <- do.call(what=py$openbb$crypto$onchain$token_decimals, args=as.list(rlang::call_match())[-1])
  o
}


#' Get top 50 tokens. [Source: Ethplorer]
#'
#' @description Wrapper for Python function crypto.onchain.top from OpenBB Terminal SDK
#'
#' @param sortby (character length 1) Key to sort by.
#' @param ascend (logical length 1) Sort in descending order.
#' @examples
#' crypto.onchain.top(sortby='rank', ascend='False')
#' @export
#* @get /crypto.onchain.top
crypto.onchain.top <- function(sortby = "rank", ascend = FALSE) {
  o <- do.call(what=py$openbb$crypto$onchain$top, args=as.list(rlang::call_match())[-1])
  o
}


#' Display top ERC20 tokens [Source: Ethplorer]
#'
#' @description Wrapper for Python function crypto.onchain.top_chart from OpenBB Terminal SDK
#'
#' @param limit (integer length 1) Limit of transactions. Maximum 100
#' @param sortby (character length 1) Key to sort by.
#' @param ascend (logical length 1) Sort in descending order.
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.onchain.top_chart(limit=15, sortby='rank', ascend='True')
#' @export
#* @get /crypto.onchain.top_chart
crypto.onchain.top_chart <- function(limit = 15, sortby = "rank", ascend = TRUE, export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$onchain$top_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get most traded crypto pairs on given decentralized exchange in chosen time period.
#'
#' @description Wrapper for Python function crypto.onchain.ttcp from OpenBB Terminal SDK
#'
#' @param network (character length 1) EVM network. One from list: bsc (binance smart chain), ethereum or matic
#' @param exchange (character length 1) Decentralized exchange name
#' @param limit (integer length 1) Number of days taken into calculation account.
#' @param sortby (character length 1) Key by which to sort data
#' @param ascend (logical length 1) Flag to sort data ascending
#' @examples
#' crypto.onchain.ttcp(network='ethereum', exchange='Uniswap', limit=90, sortby='tradeAmount', ascend=TRUE)
#' @export
#* @get /crypto.onchain.ttcp
crypto.onchain.ttcp <- function(network = "ethereum", exchange = "Uniswap", limit = 90, sortby = "tradeAmount", ascend = TRUE) {
  o <- do.call(what=py$openbb$crypto$onchain$ttcp, args=as.list(rlang::call_match())[-1])
  o
}


#' Prints table showing most traded crypto pairs on given decentralized exchange in chosen time period.
#'
#' @description Wrapper for Python function crypto.onchain.ttcp_chart from OpenBB Terminal SDK
#'
#' @param exchange (character length 1) Decentralized exchange name
#' @param days (integer length 1) Number of days taken into calculation account.
#' @param sortby (character length 1) Key by which to sort data
#' @param ascend (logical length 1) Flag to sort data ascending
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.onchain.ttcp_chart(exchange='Uniswap', days=10, sortby='tradeAmount', ascend=TRUE)
#' @export
#* @get /crypto.onchain.ttcp_chart
crypto.onchain.ttcp_chart <- function(exchange = "Uniswap", days = 10, limit = 10, sortby = "tradeAmount", ascend = TRUE, export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$onchain$ttcp_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get token volume on different Decentralized Exchanges. [Source: https://graphql.bitquery.io/]
#'
#' @description Wrapper for Python function crypto.onchain.tv from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) ERC20 token symbol.
#' @param trade_amount_currency (character length 1) Currency to display trade amount in.
#' @param sortby (character length 1) Key by which to sort data
#' @param ascend (logical length 1) Flag to sort data ascending
#' @examples
#' crypto.onchain.tv(symbol='UNI', trade_amount_currency='USD', sortby='tradeAmount', ascend=TRUE)
#' @export
#* @get /crypto.onchain.tv
crypto.onchain.tv <- function(symbol = "UNI", trade_amount_currency = "USD", sortby = "tradeAmount", ascend = TRUE) {
  o <- do.call(what=py$openbb$crypto$onchain$tv, args=as.list(rlang::call_match())[-1])
  o
}


#' Prints table showing token volume on different Decentralized Exchanges.
#'
#' @description Wrapper for Python function crypto.onchain.tv_chart from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) ERC20 token symbol or address
#' @param trade_amount_currency (character length 1) Currency of displayed trade amount. Default: USD
#' @param limit (integer length 1) Number of records to display
#' @param sortby (character length 1) Key by which to sort data
#' @param ascend (logical length 1) Flag to sort data ascending
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.onchain.tv_chart(symbol='WBTC', trade_amount_currency='USD', limit=10, sortby='tradeAmount', ascend=TRUE)
#' @export
#* @get /crypto.onchain.tv_chart
crypto.onchain.tv_chart <- function(symbol = "WBTC", trade_amount_currency = "USD", limit = 10, sortby = "tradeAmount", ascend = TRUE, export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$onchain$tv_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get info about transaction. [Source: Ethplorer]
#'
#' @description Wrapper for Python function crypto.onchain.tx from OpenBB Terminal SDK
#'
#' @param tx_hash (character length 1) Transaction hash e.g. 0x9dc7b43ad4288c624fdd236b2ecb9f2b81c93e706b2ffd1d19b112c1df7849e6
#' @export
#* @get /crypto.onchain.tx
crypto.onchain.tx <- function(tx_hash) {
  o <- do.call(what=py$openbb$crypto$onchain$tx, args=as.list(rlang::call_match())[-1])
  o
}


#' Display info about transaction. [Source: Ethplorer]
#'
#' @description Wrapper for Python function crypto.onchain.tx_chart from OpenBB Terminal SDK
#'
#' @param tx_hash (character length 1) Transaction hash e.g. 0x9dc7b43ad4288c624fdd236b2ecb9f2b81c93e706b2ffd1d19b112c1df7849e6
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @export
#* @get /crypto.onchain.tx_chart
crypto.onchain.tx_chart <- function(tx_hash, export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$onchain$tx_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get number of unique ethereum addresses which made a transaction in given time interval.
#'
#' @description Wrapper for Python function crypto.onchain.ueat from OpenBB Terminal SDK
#'
#' @param interval (character length 1) Time interval in which count unique ethereum addresses which made transaction. day,
#'     month or week.
#' @param limit (integer length 1) Number of records for data query.
#' @param sortby (character length 1) Key by which to sort data
#' @param ascend (logical length 1) Flag to sort data ascending
#' @examples
#' crypto.onchain.ueat(interval='day', limit=90, sortby='tradeAmount', ascend=TRUE)
#' @export
#* @get /crypto.onchain.ueat
crypto.onchain.ueat <- function(interval = "day", limit = 90, sortby = "tradeAmount", ascend = TRUE) {
  o <- do.call(what=py$openbb$crypto$onchain$ueat, args=as.list(rlang::call_match())[-1])
  o
}


#' Prints table showing number of unique ethereum addresses which made a transaction in given time interval
#'
#' @description Wrapper for Python function crypto.onchain.ueat_chart from OpenBB Terminal SDK
#'
#' @param interval (character length 1) Time interval in which ethereum address made transaction. month, week or day
#' @param limit (integer length 1) Number of records to display. It's calculated base on provided interval.
#'     If interval is month then calculation is made in the way: limit * 30 = time period,
#'     in case if interval is set to week, then time period is calculated as limit * 7.
#'     For better user experience maximum time period in days is equal to 90.
#' @param sortby (character length 1) Key by which to sort data
#' @param ascend (logical length 1) Flag to sort data ascending
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.onchain.ueat_chart(interval='days', limit=10, sortby='date', ascend=TRUE)
#' @export
#* @get /crypto.onchain.ueat_chart
crypto.onchain.ueat_chart <- function(interval = "days", limit = 10, sortby = "date", ascend = TRUE, export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$onchain$ueat_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Whale Alert's API allows you to retrieve live and historical transaction data from major blockchains.
#'
#' @description Wrapper for Python function crypto.onchain.whales from OpenBB Terminal SDK
#'
#' @param min_value (integer length 1) Minimum value of trade to track.
#' @param limit (integer length 1) Limit of transactions. Max 100
#' @param sortby (character length 1) Key to sort by.
#' @param ascend (logical length 1) Sort in ascending order.
#' @examples
#' crypto.onchain.whales(min_value=800000, limit=100, sortby='date', ascend='False')
#' @export
#* @get /crypto.onchain.whales
crypto.onchain.whales <- function(min_value = 800000, limit = 100, sortby = "date", ascend = FALSE) {
  o <- do.call(what=py$openbb$crypto$onchain$whales, args=as.list(rlang::call_match())[-1])
  o
}


#' Display huge value transactions from major blockchains. [Source: https://docs.whale-alert.io/]
#'
#' @description Wrapper for Python function crypto.onchain.whales_chart from OpenBB Terminal SDK
#'
#' @param min_value (integer length 1) Minimum value of trade to track.
#' @param limit (integer length 1) Limit of transactions. Maximum 100
#' @param sortby (character length 1) Key to sort by.
#' @param ascend (logical length 1) Sort in ascending order.
#' @param show_address (logical length 1) Flag to show addresses of transactions.
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.onchain.whales_chart(min_value=800000, limit=100, sortby='date', ascend='False', show_address=FALSE)
#' @export
#* @get /crypto.onchain.whales_chart
crypto.onchain.whales_chart <- function(min_value = 800000, limit = 100, sortby = "date", ascend = FALSE, show_address = FALSE, export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$onchain$whales_chart, args=as.list(rlang::call_match())[-1])
  o
}


#'
#' @description Wrapper for Python function crypto.ov.about from OpenBB Terminal SDK
#'
#' @export
#* @get /crypto.ov.about
crypto.ov.about <- function() {
  o <- do.call(what=py$openbb$crypto$ov$about, args=as.list(rlang::call_match())[-1])
  o
}


#' Get altcoin index overtime
#'
#' @description Wrapper for Python function crypto.ov.altindex from OpenBB Terminal SDK
#'
#' @param period (integer length 1) Number of days {30,90,365} to check performance of coins and calculate the altcoin index.
#'     E.g., 365 checks yearly performance, 90 will check seasonal performance (90 days),
#'     30 will check monthly performance (30 days).
#' @param start_date (character length 1) Initial date, format YYYY-MM-DD
#' @export
#* @get /crypto.ov.altindex
crypto.ov.altindex <- function(period = 30, start_date = "2010-01-01", end_date) {
  o <- do.call(what=py$openbb$crypto$ov$altindex, args=as.list(rlang::call_match())[-1])
  o
}


#' Displays altcoin index overtime
#'
#' @description Wrapper for Python function crypto.ov.altindex_chart from OpenBB Terminal SDK
#'
#' @param period (integer length 1) Number of days to check the performance of coins and calculate the altcoin index.
#'     E.g., 365 will check yearly performance , 90 will check seasonal performance (90 days),
#'     30 will check monthly performance (30 days).
#' @param start_date (character length 1) Initial date, format YYYY-MM-DD
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @export
#* @get /crypto.ov.altindex_chart
crypto.ov.altindex_chart <- function(period = 365, start_date = "2010-01-01", end_date, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$crypto$ov$altindex_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get bitcoin price data
#'
#' @description Wrapper for Python function crypto.ov.btcrb from OpenBB Terminal SDK
#'
#' @param start_date (character length 1) Initial date, format YYYY-MM-DD
#' @examples
#' crypto.ov.btcrb(start_date='2010-01-01')
#' @export
#* @get /crypto.ov.btcrb
crypto.ov.btcrb <- function(start_date = "2010-01-01", end_date) {
  o <- do.call(what=py$openbb$crypto$ov$btcrb, args=as.list(rlang::call_match())[-1])
  o
}


#' Displays bitcoin rainbow chart
#'
#' @description Wrapper for Python function crypto.ov.btcrb_chart from OpenBB Terminal SDK
#'
#' @param start_date (character length 1) Initial date, format YYYY-MM-DD
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.ov.btcrb_chart(start_date='2010-01-01')
#' @export
#* @get /crypto.ov.btcrb_chart
crypto.ov.btcrb_chart <- function(start_date = "2010-01-01", end_date, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$crypto$ov$btcrb_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Returns top crypto categories [Source: CoinGecko]
#'
#' @description Wrapper for Python function crypto.ov.categories from OpenBB Terminal SDK
#'
#' @param sort_filter (character length 1) Can be one of - "market_cap_desc", "market_cap_asc", "name_desc", "name_asc",
#'     "market_cap_change_24h_desc", "market_cap_change_24h_asc"
#' @examples
#' crypto.ov.categories(sort_filter='market_cap_desc')
#' @export
#* @get /crypto.ov.categories
crypto.ov.categories <- function(sort_filter = "market_cap_desc") {
  o <- do.call(what=py$openbb$crypto$ov$categories, args=as.list(rlang::call_match())[-1])
  o
}


#' Shows top cryptocurrency categories by market capitalization
#'
#' @description Wrapper for Python function crypto.ov.categories_chart from OpenBB Terminal SDK
#'
#' @param sortby (character length 1) Key by which to sort data
#' @param limit (integer length 1) Number of records to display
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @param pie (logical length 1) Whether to show the pie chart
#' @examples
#' crypto.ov.categories_chart(sortby='market_cap_desc', limit=15, pie=FALSE)
#' @export
#* @get /crypto.ov.categories_chart
crypto.ov.categories_chart <- function(sortby = "market_cap_desc", limit = 15, export = "", sheet_name, pie = FALSE) {
  o <- do.call(what=py$openbb$crypto$ov$categories_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get a list of available currency pairs for trading. [Source: Coinbase]
#'
#' @description Wrapper for Python function crypto.ov.cbpairs from OpenBB Terminal SDK
#'
#' @param limit (integer length 1) Top n of pairs
#' @param sortby (character length 1) Key to sortby data
#' @param ascend (logical length 1) Sort descending flag
#' @examples
#' crypto.ov.cbpairs(limit=50, sortby='quote_increment', ascend=TRUE)
#' @export
#* @get /crypto.ov.cbpairs
crypto.ov.cbpairs <- function(limit = 50, sortby = "quote_increment", ascend = TRUE) {
  o <- do.call(what=py$openbb$crypto$ov$cbpairs, args=as.list(rlang::call_match())[-1])
  o
}


#' Displays a list of available currency pairs for trading. [Source: Coinbase]
#'
#' @description Wrapper for Python function crypto.ov.cbpairs_chart from OpenBB Terminal SDK
#'
#' @param limit (integer length 1) Top n of pairs
#' @param sortby (character length 1) Key to sortby data
#' @param ascend (logical length 1) Sort ascending flag
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.ov.cbpairs_chart(limit=20, sortby='quote_increment', ascend=TRUE)
#' @export
#* @get /crypto.ov.cbpairs_chart
crypto.ov.cbpairs_chart <- function(limit = 20, sortby = "quote_increment", ascend = TRUE, export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$ov$cbpairs_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get list of all available coins on CoinPaprika  [Source: CoinPaprika]
#'
#' @description Wrapper for Python function crypto.ov.coin_list from OpenBB Terminal SDK
#'
#' @export
#* @get /crypto.ov.coin_list
crypto.ov.coin_list <- function() {
  o <- do.call(what=py$openbb$crypto$ov$coin_list, args=as.list(rlang::call_match())[-1])
  o
}


#' Gets all contract addresses for given platform [Source: CoinPaprika]
#'
#' @description Wrapper for Python function crypto.ov.contracts from OpenBB Terminal SDK
#'
#' @param platform_id (character length 1) Blockchain platform like eth-ethereum
#' @param sortby (character length 1) Key by which to sort data
#' @param ascend (logical length 1) Flag to sort data ascend
#' @examples
#' crypto.ov.contracts(platform_id='eth-ethereum', sortby='active', ascend=TRUE)
#' @export
#* @get /crypto.ov.contracts
crypto.ov.contracts <- function(platform_id = "eth-ethereum", sortby = "active", ascend = TRUE) {
  o <- do.call(what=py$openbb$crypto$ov$contracts, args=as.list(rlang::call_match())[-1])
  o
}


#' Gets all contract addresses for given platform. [Source: CoinPaprika]
#'
#' @description Wrapper for Python function crypto.ov.contracts_chart from OpenBB Terminal SDK
#'
#' @param sortby (character length 1) Key by which to sort data
#' @param ascend (logical length 1) Flag to sort data ascending
#' @param limit (integer length 1) Number of records to display
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.ov.contracts_chart(limit=15, sortby='active', ascend=TRUE)
#' @export
#* @get /crypto.ov.contracts_chart
crypto.ov.contracts_chart <- function(symbol, sortby = "active", ascend = TRUE, limit = 15, export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$ov$contracts_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Returns crypto {borrow,supply} interest rates for cryptocurrencies across several platforms
#'
#' @description Wrapper for Python function crypto.ov.cr from OpenBB Terminal SDK
#'
#' @param rate_type (character length 1) Interest rate type: {borrow, supply}. Default: supply
#' @examples
#' crypto.ov.cr(rate_type='borrow')
#' @export
#* @get /crypto.ov.cr
crypto.ov.cr <- function(rate_type = "borrow") {
  o <- do.call(what=py$openbb$crypto$ov$cr, args=as.list(rlang::call_match())[-1])
  o
}


#' Displays crypto {borrow,supply} interest rates for cryptocurrencies across several platforms
#'
#' @description Wrapper for Python function crypto.ov.cr_chart from OpenBB Terminal SDK
#'
#' @param symbols (character length 1) Crypto separated by commas. Default: BTC,ETH,USDT,USDC
#' @param platforms (character length 1) Platforms separated by commas. Default: BlockFi,Ledn,SwissBorg,Youhodler
#' @param rate_type (character length 1) Interest rate type: {borrow, supply}. Default: supply
#' @param limit (integer length 1) Number of records to show
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.ov.cr_chart(rate_type='borrow', limit=10)
#' @export
#* @get /crypto.ov.cr_chart
crypto.ov.cr_chart <- function(symbols, platforms, rate_type = "borrow", limit = 10, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$crypto$ov$cr_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get crypto hack
#'
#' @description Wrapper for Python function crypto.ov.crypto_hack from OpenBB Terminal SDK
#'
#' @param slug (character length 1) slug of crypto hack
#' @export
#* @get /crypto.ov.crypto_hack
crypto.ov.crypto_hack <- function(slug) {
  o <- do.call(what=py$openbb$crypto$ov$crypto_hack, args=as.list(rlang::call_match())[-1])
  o
}


#' Get all crypto hack slugs
#'
#' @description Wrapper for Python function crypto.ov.crypto_hack_slugs from OpenBB Terminal SDK
#'
#' @export
#* @get /crypto.ov.crypto_hack_slugs
crypto.ov.crypto_hack_slugs <- function() {
  o <- do.call(what=py$openbb$crypto$ov$crypto_hack_slugs, args=as.list(rlang::call_match())[-1])
  o
}


#' Get major crypto-related hacks
#'
#' @description Wrapper for Python function crypto.ov.crypto_hacks from OpenBB Terminal SDK
#'
#' @param sortby (character length 1) Key by which to sort data {Platform,Date,Amount [$],Audit,Slug,URL}
#' @param ascend (logical length 1) Flag to sort data ascending
#' @examples
#' crypto.ov.crypto_hacks(sortby='Platform', ascend=FALSE)
#' @export
#* @get /crypto.ov.crypto_hacks
crypto.ov.crypto_hacks <- function(sortby = "Platform", ascend = FALSE) {
  o <- do.call(what=py$openbb$crypto$ov$crypto_hacks, args=as.list(rlang::call_match())[-1])
  o
}


#' Display list of major crypto-related hacks. If slug is passed
#'
#' @description Wrapper for Python function crypto.ov.crypto_hacks_chart from OpenBB Terminal SDK
#'
#' @param limit (integer length 1) Number of hacks to search
#' @param sortby (character length 1) Key by which to sort data {Platform,Date,Amount [$],Audit,Slug,URL}
#' @param ascend (logical length 1) Flag to sort data ascending
#' @param slug (character length 1) Crypto hack slug to check (e.g., polynetwork-rekt)
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.ov.crypto_hacks_chart(slug='polyntwork-rekt', limit=15, sortby='Platform', ascend=FALSE)
#' @export
#* @get /crypto.ov.crypto_hacks_chart
crypto.ov.crypto_hacks_chart <- function(limit = 15, sortby = "Platform", ascend = FALSE, slug = "polyntwork-rekt", export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$ov$crypto_hacks_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get global statistics about Decentralized Finances [Source: CoinGecko]
#'
#' @description Wrapper for Python function crypto.ov.defi from OpenBB Terminal SDK
#'
#' @export
#* @get /crypto.ov.defi
crypto.ov.defi <- function() {
  o <- do.call(what=py$openbb$crypto$ov$defi, args=as.list(rlang::call_match())[-1])
  o
}


#' Shows global statistics about Decentralized Finances. [Source: CoinGecko]
#'
#' @description Wrapper for Python function crypto.ov.defi_chart from OpenBB Terminal SDK
#'
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @export
#* @get /crypto.ov.defi_chart
crypto.ov.defi_chart <- function(export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$ov$defi_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get list of crypto derivatives from CoinGecko API [Source: CoinGecko]
#'
#' @description Wrapper for Python function crypto.ov.derivatives from OpenBB Terminal SDK
#'
#' @param sortby (character length 1) Key by which to sort data
#' @param ascend (logical length 1) Flag to sort data descending
#' @examples
#' crypto.ov.derivatives(sortby='Rank', ascend=FALSE)
#' @export
#* @get /crypto.ov.derivatives
crypto.ov.derivatives <- function(sortby = "Rank", ascend = FALSE) {
  o <- do.call(what=py$openbb$crypto$ov$derivatives, args=as.list(rlang::call_match())[-1])
  o
}


#' Shows  list of crypto derivatives. [Source: CoinGecko]
#'
#' @description Wrapper for Python function crypto.ov.derivatives_chart from OpenBB Terminal SDK
#'
#' @param sortby (character length 1) Key by which to sort data
#' @param ascend (logical length 1) Flag to sort data descending
#' @param limit (integer length 1) Number of records to display
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.ov.derivatives_chart(limit=15, sortby='Rank', ascend=FALSE)
#' @export
#* @get /crypto.ov.derivatives_chart
crypto.ov.derivatives_chart <- function(sortby = "Rank", ascend = FALSE, limit = 15, export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$ov$derivatives_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Scrapes exchange withdrawal fees
#'
#' @description Wrapper for Python function crypto.ov.ewf from OpenBB Terminal SDK
#'
#' @export
#* @get /crypto.ov.ewf
crypto.ov.ewf <- function() {
  o <- do.call(what=py$openbb$crypto$ov$ewf, args=as.list(rlang::call_match())[-1])
  o
}


#' Exchange withdrawal fees
#'
#' @description Wrapper for Python function crypto.ov.ewf_chart from OpenBB Terminal SDK
#'
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @export
#* @get /crypto.ov.ewf_chart
crypto.ov.ewf_chart <- function(export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$ov$ewf_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Show top crypto exchanges.
#'
#' @description Wrapper for Python function crypto.ov.exchanges from OpenBB Terminal SDK
#'
#' @param source (character length 1) Source to get exchanges, by default "CoinGecko"
#' @examples
#' crypto.ov.exchanges(source='CoinGecko')
#' @export
#* @get /crypto.ov.exchanges
crypto.ov.exchanges <- function(source = "CoinGecko") {
  o <- do.call(what=py$openbb$crypto$ov$exchanges, args=as.list(rlang::call_match())[-1])
  o
}


#' List markets by exchange ID [Source: CoinPaprika]
#'
#' @description Wrapper for Python function crypto.ov.exmarkets from OpenBB Terminal SDK
#'
#' @param exchange_id (character length 1) identifier of exchange e.g for Binance Exchange -> binance
#' @param symbols (character length 1) Comma separated quotes to return e.g quotes=USD,BTC
#' @param sortby (character length 1) Key by which to sort data
#' @param ascend (logical length 1) Flag to sort data ascending
#' @examples
#' crypto.ov.exmarkets(exchange_id='binance', symbols='USD', sortby='pair', ascend=TRUE)
#' @export
#* @get /crypto.ov.exmarkets
crypto.ov.exmarkets <- function(exchange_id = "binance", symbols = "USD", sortby = "pair", ascend = TRUE) {
  o <- do.call(what=py$openbb$crypto$ov$exmarkets, args=as.list(rlang::call_match())[-1])
  o
}


#' Get all markets for given exchange [Source: CoinPaprika]
#'
#' @description Wrapper for Python function crypto.ov.exmarkets_chart from OpenBB Terminal SDK
#'
#' @param exchange (character length 1) Exchange identifier e.g Binance
#' @param sortby (character length 1) Key by which to sort data
#' @param ascend (logical length 1) Flag to sort data descending
#' @param limit (integer length 1) Number of records to display
#' @param links (logical length 1) Flag to display urls
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.ov.exmarkets_chart(exchange='binance', limit=15, sortby='pair', ascend=TRUE, links=FALSE)
#' @export
#* @get /crypto.ov.exmarkets_chart
crypto.ov.exmarkets_chart <- function(exchange = "binance", sortby = "pair", ascend = TRUE, limit = 15, links = FALSE, export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$ov$exmarkets_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get list of crypto, fiats, commodity exchange rates from CoinGecko API [Source: CoinGecko]
#'
#' @description Wrapper for Python function crypto.ov.exrates from OpenBB Terminal SDK
#'
#' @param sortby (character length 1) Key by which to sort data
#' @param ascend (logical length 1) Flag to sort data ascending
#' @examples
#' crypto.ov.exrates(sortby='Name', ascend=FALSE)
#' @export
#* @get /crypto.ov.exrates
crypto.ov.exrates <- function(sortby = "Name", ascend = FALSE) {
  o <- do.call(what=py$openbb$crypto$ov$exrates, args=as.list(rlang::call_match())[-1])
  o
}


#' Shows  list of crypto, fiats, commodity exchange rates. [Source: CoinGecko]
#'
#' @description Wrapper for Python function crypto.ov.exrates_chart from OpenBB Terminal SDK
#'
#' @param sortby (character length 1) Key by which to sort data
#' @param ascend (logical length 1) Flag to sort data ascending
#' @param limit (integer length 1) Number of records to display
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.ov.exrates_chart(limit=15, sortby='Name', ascend=FALSE)
#' @export
#* @get /crypto.ov.exrates_chart
crypto.ov.exrates_chart <- function(sortby = "Name", ascend = FALSE, limit = 15, export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$ov$exrates_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get global crypto market data.
#'
#' @description Wrapper for Python function crypto.ov.globe from OpenBB Terminal SDK
#'
#' @param source (character length 1) Source of data, by default "CoinGecko"
#' @examples
#' crypto.ov.globe(source='CoinGecko')
#' @export
#* @get /crypto.ov.globe
crypto.ov.globe <- function(source = "CoinGecko") {
  o <- do.call(what=py$openbb$crypto$ov$globe, args=as.list(rlang::call_match())[-1])
  o
}


#' Get N coins from CoinGecko [Source: CoinGecko]
#'
#' @description Wrapper for Python function crypto.ov.hm from OpenBB Terminal SDK
#'
#' @param limit (integer length 1) Number of top coins to grab from CoinGecko
#' @param category (character length 1) Category of the coins we want to retrieve
#' @param sortby (character length 1) Key to sort data
#' @param ascend (logical length 1) Sort data in ascending order
#' @examples
#' crypto.ov.hm(limit=250, sortby='Symbol', ascend=FALSE)
#' @export
#* @get /crypto.ov.hm
crypto.ov.hm <- function(limit = 250, category = "", sortby = "Symbol", ascend = FALSE) {
  o <- do.call(what=py$openbb$crypto$ov$hm, args=as.list(rlang::call_match())[-1])
  o
}


#' Shows cryptocurrencies heatmap [Source: CoinGecko]
#'
#' @description Wrapper for Python function crypto.ov.hm_chart from OpenBB Terminal SDK
#'
#' @param limit (integer length 1) Number of top cryptocurrencies to display
#' @param export (character length 1) Export dataframe data to csv,json,xlsx
#' @examples
#' crypto.ov.hm_chart(limit=15)
#' @export
#* @get /crypto.ov.hm_chart
crypto.ov.hm_chart <- function(category = "", limit = 15, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$crypto$ov$hm_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Returns public companies that holds ethereum or bitcoin [Source: CoinGecko]
#'
#' @description Wrapper for Python function crypto.ov.hold from OpenBB Terminal SDK
#'
#' @param endpoint (character length 1) "bitcoin" or "ethereum"
#' @examples
#' crypto.ov.hold(endpoint='bitcoin')
#' @export
#* @get /crypto.ov.hold
crypto.ov.hold <- function(endpoint = "bitcoin") {
  o <- do.call(what=py$openbb$crypto$ov$hold, args=as.list(rlang::call_match())[-1])
  o
}


#' Shows overview of public companies that holds ethereum or bitcoin. [Source: CoinGecko]
#'
#' @description Wrapper for Python function crypto.ov.hold_chart from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Cryptocurrency: ethereum or bitcoin
#' @param show_bar (logical length 1) Whether to show a bar graph for the data
#' @param export (character length 1) Export dataframe data to csv,json,xlsx
#' @param limit (integer length 1) The number of rows to show
#' @examples
#' crypto.ov.hold_chart(symbol='ETH', show_bar=FALSE, limit=15)
#' @export
#* @get /crypto.ov.hold_chart
crypto.ov.hold_chart <- function(symbol, show_bar = FALSE, export = "", sheet_name, limit = 15) {
  o <- do.call(what=py$openbb$crypto$ov$hold_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get list of crypto indexes from CoinGecko API [Source: CoinGecko]
#'
#' @description Wrapper for Python function crypto.ov.indexes from OpenBB Terminal SDK
#'
#' @param sortby (character length 1) Key by which to sort data
#' @param ascend (logical length 1) Flag to sort data ascending
#' @examples
#' crypto.ov.indexes(sortby='Name', ascend=TRUE)
#' @export
#* @get /crypto.ov.indexes
crypto.ov.indexes <- function(sortby = "Name", ascend = TRUE) {
  o <- do.call(what=py$openbb$crypto$ov$indexes, args=as.list(rlang::call_match())[-1])
  o
}


#' Shows list of crypto indexes. [Source: CoinGecko]
#'
#' @description Wrapper for Python function crypto.ov.indexes_chart from OpenBB Terminal SDK
#'
#' @param sortby (character length 1) Key by which to sort data
#' @param ascend (logical length 1) Flag to sort data descending
#' @param limit (integer length 1) Number of records to display
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.ov.indexes_chart(limit=15, sortby='Name', ascend=TRUE)
#' @export
#* @get /crypto.ov.indexes_chart
crypto.ov.indexes_chart <- function(sortby = "Name", ascend = TRUE, limit = 15, export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$ov$indexes_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Returns basic coin information for all coins from CoinPaprika API [Source: CoinPaprika]
#'
#' @description Wrapper for Python function crypto.ov.info from OpenBB Terminal SDK
#'
#' @param symbols (character length 1) Comma separated quotes to return e.g quotes=USD,BTC
#' @param sortby (character length 1) Key by which to sort data
#' @param ascend (logical length 1) Flag to sort data descending
#' @examples
#' crypto.ov.info(symbols='USD', sortby='rank', ascend=TRUE)
#' @export
#* @get /crypto.ov.info
crypto.ov.info <- function(symbols = "USD", sortby = "rank", ascend = TRUE) {
  o <- do.call(what=py$openbb$crypto$ov$info, args=as.list(rlang::call_match())[-1])
  o
}


#' Displays basic coin information for all coins from CoinPaprika API. [Source: CoinPaprika]
#'
#' @description Wrapper for Python function crypto.ov.info_chart from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Quoted currency
#' @param sortby (character length 1) Key by which to sort data
#' @param ascend (logical length 1) Flag to sort data descending
#' @param limit (integer length 1) Number of records to display
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.ov.info_chart(symbol='AMZN', limit=15, sortby='rank', ascend=TRUE)
#' @export
#* @get /crypto.ov.info_chart
crypto.ov.info_chart <- function(symbol, sortby = "rank", ascend = TRUE, limit = 15, export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$ov$info_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Returns basic coin information for all coins from CoinPaprika API [Source: CoinPaprika]
#'
#' @description Wrapper for Python function crypto.ov.markets from OpenBB Terminal SDK
#'
#' @param symbols (character length 1) Comma separated quotes to return e.g quotes=USD,BTC
#' @param sortby (character length 1) Key by which to sort data
#' @param ascend (logical length 1) Flag to sort data ascend
#' @examples
#' crypto.ov.markets(symbols='USD', sortby='rank', ascend=TRUE)
#' @export
#* @get /crypto.ov.markets
crypto.ov.markets <- function(symbols = "USD", sortby = "rank", ascend = TRUE) {
  o <- do.call(what=py$openbb$crypto$ov$markets, args=as.list(rlang::call_match())[-1])
  o
}


#' Displays basic market information for all coins from CoinPaprika API. [Source: CoinPaprika]
#'
#' @description Wrapper for Python function crypto.ov.markets_chart from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Quoted currency
#' @param sortby (character length 1) Key by which to sort data
#' @param ascend (logical length 1) Flag to sort data ascending
#' @param limit (integer length 1) Number of records to display
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.ov.markets_chart(symbol='AMZN', limit=15, sortby='rank', ascend=TRUE)
#' @export
#* @get /crypto.ov.markets_chart
crypto.ov.markets_chart <- function(symbol, sortby = "rank", ascend = TRUE, limit = 15, export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$ov$markets_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get recent posts from CryptoPanic news aggregator platform. [Source: https://cryptopanic.com/]
#'
#' @description Wrapper for Python function crypto.ov.news from OpenBB Terminal SDK
#'
#' @param limit (integer length 1) number of news to fetch
#' @param post_kind (character length 1) Filter by category of news. Available values: news or media.
#' @param region (character length 1) Filter news by regions. Available regions are: en (English), de (Deutsch), nl (Dutch),
#'     es (Español), fr (Français), it (Italiano), pt (Português), ru (Русский)
#' @param sortby (character length 1) Key to sort by.
#' @param ascend (logical length 1) Sort in ascend order.
#' @examples
#' crypto.ov.news(limit=60, post_kind='news', region='en', sortby='published_at', ascend=TRUE)
#' @export
#* @get /crypto.ov.news
crypto.ov.news <- function(limit = 60, post_kind = "news", filter_, region = "en", source, symbol, sortby = "published_at", ascend = TRUE) {
  o <- do.call(what=py$openbb$crypto$ov$news, args=as.list(rlang::call_match())[-1])
  o
}


#' Display recent posts from CryptoPanic news aggregator platform.
#'
#' @description Wrapper for Python function crypto.ov.news_chart from OpenBB Terminal SDK
#'
#' @param post_kind (character length 1) Filter by category of news. Available values: news or media.
#' @param region (character length 1) Filter news by regions. Available regions are: en (English), de (Deutsch), nl (Dutch),
#'     es (Español), fr (Français), it (Italiano), pt (Português), ru (Русский)
#' @param limit (integer length 1) number of news to display
#' @param sortby (character length 1) Key to sort by.
#' @param ascend (logical length 1) Sort in ascending order.
#' @param links (logical length 1) Show urls for news
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.ov.news_chart(limit=25, post_kind='news', region='en', sortby='published_at', ascend=FALSE, links=FALSE)
#' @export
#* @get /crypto.ov.news_chart
crypto.ov.news_chart <- function(post_kind = "news", region = "en", filter_, limit = 25, sortby = "published_at", ascend = FALSE, links = FALSE, export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$ov$news_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' List all smart contract platforms like ethereum, solana, cosmos, polkadot, kusama ... [Source: CoinPaprika]
#'
#' @description Wrapper for Python function crypto.ov.platforms from OpenBB Terminal SDK
#'
#' @export
#* @get /crypto.ov.platforms
crypto.ov.platforms <- function() {
  o <- do.call(what=py$openbb$crypto$ov$platforms, args=as.list(rlang::call_match())[-1])
  o
}


#' List all smart contract platforms like ethereum, solana, cosmos, polkadot, kusama.
#'
#' @description Wrapper for Python function crypto.ov.platforms_chart from OpenBB Terminal SDK
#'
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @export
#* @get /crypto.ov.platforms_chart
crypto.ov.platforms_chart <- function(export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$ov$platforms_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get list of financial products from CoinGecko API
#'
#' @description Wrapper for Python function crypto.ov.products from OpenBB Terminal SDK
#'
#' @param sortby (character length 1) Key by which to sort data
#' @param ascend (logical length 1) Flag to sort data ascending
#' @examples
#' crypto.ov.products(sortby='Name', ascend=TRUE)
#' @export
#* @get /crypto.ov.products
crypto.ov.products <- function(sortby = "Name", ascend = TRUE) {
  o <- do.call(what=py$openbb$crypto$ov$products, args=as.list(rlang::call_match())[-1])
  o
}


#' Shows list of financial products. [Source: CoinGecko]
#'
#' @description Wrapper for Python function crypto.ov.products_chart from OpenBB Terminal SDK
#'
#' @param sortby (character length 1) Key by which to sort data
#' @param ascend (logical length 1) Flag to sort data descending
#' @param limit (integer length 1) Number of records to display
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.ov.products_chart(limit=15, sortby='Platform', ascend=FALSE)
#' @export
#* @get /crypto.ov.products_chart
crypto.ov.products_chart <- function(sortby = "Platform", ascend = FALSE, limit = 15, export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$ov$products_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Returns top stable coins [Source: CoinGecko]
#'
#' @description Wrapper for Python function crypto.ov.stables from OpenBB Terminal SDK
#'
#' @param limit (integer length 1) How many rows to show
#' @param sortby (character length 1) Key by which to sort data, default is Market_Cap_[$]
#' @param ascend (logical length 1) Flag to sort data ascending
#' @examples
#' crypto.ov.stables(limit=15, sortby='Market_Cap_[$]', ascend=FALSE)
#' @export
#* @get /crypto.ov.stables
crypto.ov.stables <- function(limit = 15, sortby = "Market_Cap_[$]", ascend = FALSE) {
  o <- do.call(what=py$openbb$crypto$ov$stables, args=as.list(rlang::call_match())[-1])
  o
}


#' Shows stablecoins data [Source: CoinGecko]
#'
#' @description Wrapper for Python function crypto.ov.stables_chart from OpenBB Terminal SDK
#'
#' @param limit (integer length 1) Number of records to display
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @param sortby (character length 1) Key by which to sort data, default is Market_Cap_[$]
#' @param ascend (logical length 1) Flag to sort data ascending
#' @param pie (logical length 1) Whether to show a pie chart
#' @examples
#' crypto.ov.stables_chart(limit=15, sortby='Market_Cap_[$]', ascend=FALSE, pie=TRUE, pie=TRUE)
#' @export
#* @get /crypto.ov.stables_chart
crypto.ov.stables_chart <- function(limit = 15, export = "", sheet_name, sortby = "Market_Cap_[$]", ascend = FALSE, pie = TRUE) {
  o <- do.call(what=py$openbb$crypto$ov$stables_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Scrapes top coins withdrawal fees
#'
#' @description Wrapper for Python function crypto.ov.wf from OpenBB Terminal SDK
#'
#' @param limit (integer length 1) Number of coins to search, by default n=100, one page has 100 coins, so 1 page is scraped.
#' @examples
#' crypto.ov.wf(limit=100)
#' @export
#* @get /crypto.ov.wf
crypto.ov.wf <- function(limit = 100) {
  o <- do.call(what=py$openbb$crypto$ov$wf, args=as.list(rlang::call_match())[-1])
  o
}


#' Top coins withdrawal fees
#'
#' @description Wrapper for Python function crypto.ov.wf_chart from OpenBB Terminal SDK
#'
#' @param limit (integer length 1) Number of coins to search
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.ov.wf_chart(limit=15)
#' @export
#* @get /crypto.ov.wf_chart
crypto.ov.wf_chart <- function(limit = 15, export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$ov$wf_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Scrapes coin withdrawal fees per exchange
#'
#' @description Wrapper for Python function crypto.ov.wfpe from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Coin to check withdrawal fees. By default bitcoin
#' @examples
#' crypto.ov.wfpe(symbol='AMZN')
#' @export
#* @get /crypto.ov.wfpe
crypto.ov.wfpe <- function(symbol) {
  o <- do.call(what=py$openbb$crypto$ov$wfpe, args=as.list(rlang::call_match())[-1])
  o
}


#' Coin withdrawal fees per exchange
#'
#' @description Wrapper for Python function crypto.ov.wfpe_chart from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Coin to check withdrawal fees
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.ov.wfpe_chart(symbol='AMZN')
#' @export
#* @get /crypto.ov.wfpe_chart
crypto.ov.wfpe_chart <- function(symbol, export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$ov$wfpe_chart, args=as.list(rlang::call_match())[-1])
  o
}


#'
#' @description Wrapper for Python function crypto.tools.about from OpenBB Terminal SDK
#'
#' @export
#* @get /crypto.tools.about
crypto.tools.about <- function() {
  o <- do.call(what=py$openbb$crypto$tools$about, args=as.list(rlang::call_match())[-1])
  o
}


#' Converts apr into apy
#'
#' @description Wrapper for Python function crypto.tools.apy from OpenBB Terminal SDK
#'
#' @param apr (numeric length 1) value in percentage
#' @param compounding_times (integer length 1) number of compounded periods in a year
#' @export
#* @get /crypto.tools.apy
crypto.tools.apy <- function(apr, compounding_times) {
  o <- do.call(what=py$openbb$crypto$tools$apy, args=as.list(rlang::call_match())[-1])
  o
}


#' Displays APY value converted from APR
#'
#' @description Wrapper for Python function crypto.tools.apy_chart from OpenBB Terminal SDK
#'
#' @param apr (numeric length 1) value in percentage
#' @param compounding_times (integer length 1) number of compounded periods in a year
#' @param narrative (logical length 1) display narrative version instead of dataframe
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.tools.apy_chart(narrative='False')
#' @export
#* @get /crypto.tools.apy_chart
crypto.tools.apy_chart <- function(apr, compounding_times, narrative = FALSE, export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$tools$apy_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Calculates Impermanent Loss in a custom liquidity pool
#'
#' @description Wrapper for Python function crypto.tools.il from OpenBB Terminal SDK
#'
#' @param price_changeA (numeric length 1) price change of crypto A in percentage
#' @param price_changeB (numeric length 1) price change of crypto B in percentage
#' @param proportion (numeric length 1) percentage of first token in pool
#' @param initial_pool_value (numeric length 1) initial value that pool contains
#' @export
#* @get /crypto.tools.il
crypto.tools.il <- function(price_changeA, price_changeB, proportion, initial_pool_value) {
  o <- do.call(what=py$openbb$crypto$tools$il, args=as.list(rlang::call_match())[-1])
  o
}


#' Displays Impermanent Loss in a custom liquidity pool
#'
#' @description Wrapper for Python function crypto.tools.il_chart from OpenBB Terminal SDK
#'
#' @param price_changeA (integer length 1) price change of crypto A in percentage
#' @param price_changeB (integer length 1) price change of crypto B in percentage
#' @param proportion (integer length 1) percentage of first token in pool
#' @param initial_pool_value (integer length 1) initial value that pool contains
#' @param narrative (logical length 1) display narrative version instead of dataframe
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' crypto.tools.il_chart(narrative='False')
#' @export
#* @get /crypto.tools.il_chart
crypto.tools.il_chart <- function(price_changeA, price_changeB, proportion, initial_pool_value, narrative = FALSE, export = "", sheet_name) {
  o <- do.call(what=py$openbb$crypto$tools$il_chart, args=as.list(rlang::call_match())[-1])
  o
}


#'
#' @description Wrapper for Python function econometrics.about from OpenBB Terminal SDK
#'
#' @export
#* @get /econometrics.about
econometrics.about <- function() {
  o <- do.call(what=py$openbb$econometrics$about, args=as.list(rlang::call_match())[-1])
  o
}


#' Calculate test statistics for autocorrelation
#'
#' @description Wrapper for Python function econometrics.bgod from OpenBB Terminal SDK
#'
#' @param model (data.frame) OLS model that has been fit.
#' @param lags (integer length 1) The amount of lags.
#' @examples
#' econometrics.bgod(lags=3)
#' @export
#* @get /econometrics.bgod
econometrics.bgod <- function(model, lags = 3) {
  o <- do.call(what=py$openbb$econometrics$bgod, args=as.list(rlang::call_match())[-1])
  o
}


#' Show Breusch-Godfrey autocorrelation test
#'
#' @description Wrapper for Python function econometrics.bgod_chart from OpenBB Terminal SDK
#'
#' @param model (Python type: statsmodels.regression.linear_model.RegressionResultsWrapper) OLS model that has been fit.
#' @param lags (integer length 1) The amount of lags included.
#' @param export (character length 1) Format to export data
#' @examples
#' econometrics.bgod_chart(lags=3)
#' @export
#* @get /econometrics.bgod_chart
econometrics.bgod_chart <- function(model, lags = 3, export = "", sheet_name) {
  o <- do.call(what=py$openbb$econometrics$bgod_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' The between estimator is an alternative, usually less efficient estimator, can can be used to
#'
#' @description Wrapper for Python function econometrics.bols from OpenBB Terminal SDK
#'
#' @export
#* @get /econometrics.bols
econometrics.bols <- function(Y, X) {
  o <- do.call(what=py$openbb$econometrics$bols, args=as.list(rlang::call_match())[-1])
  o
}


#' Calculate test statistics for heteroscedasticity
#'
#' @description Wrapper for Python function econometrics.bpag from OpenBB Terminal SDK
#'
#' @param model (Python type: statsmodels.regression.linear_model.RegressionResultsWrapper) Model containing residual values.
#' @export
#* @get /econometrics.bpag
econometrics.bpag <- function(model) {
  o <- do.call(what=py$openbb$econometrics$bpag, args=as.list(rlang::call_match())[-1])
  o
}


#' Show Breusch-Pagan heteroscedasticity test
#'
#' @description Wrapper for Python function econometrics.bpag_chart from OpenBB Terminal SDK
#'
#' @param model (Python type: statsmodels.regression.linear_model.RegressionResultsWrapper) OLS model that has been fit.
#' @param export (character length 1) Format to export data
#' @export
#* @get /econometrics.bpag_chart
econometrics.bpag_chart <- function(model, export = "", sheet_name) {
  o <- do.call(what=py$openbb$econometrics$bpag_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Clean up NaNs from the dataset
#'
#' @description Wrapper for Python function econometrics.clean from OpenBB Terminal SDK
#'
#' @param dataset (data.frame) The dataset you wish to clean
#' @param fill (character length 1) The method of filling NaNs. Choose from:
#'     rfill, cfill, rbfill, cbfill, rffill, cffill
#' @param drop (character length 1) The method of dropping NaNs. Choose from:
#'     rdrop, cdrop
#' @export
#* @get /econometrics.clean
econometrics.clean <- function(dataset, fill = "", drop = "", limit) {
  o <- do.call(what=py$openbb$econometrics$clean, args=as.list(rlang::call_match())[-1])
  o
}


#' Calculate cointegration tests between variable number of input series
#'
#' @description Wrapper for Python function econometrics.coint from OpenBB Terminal SDK
#'
#' @param datasets (Python type: pandas.core.series.Series) Input series to test cointegration for
#' @param return_z (logical length 1) Flag to return the z data to plot
#' @examples
#' econometrics.coint(return_z=FALSE)
#' @export
#* @get /econometrics.coint
econometrics.coint <- function(datasets, return_z = FALSE) {
  o <- do.call(what=py$openbb$econometrics$coint, args=as.list(rlang::call_match())[-1])
  o
}


#' Estimates long-run and short-run cointegration relationship for series y and x and apply
#'
#' @description Wrapper for Python function econometrics.coint_chart from OpenBB Terminal SDK
#'
#' @param datasets (Python type: pandas.core.series.Series) Variable number of series to test for cointegration
#' @param significant (logical length 1) Show only companies that have p-values lower than this percentage
#' @param plot (logical length 1) Whether you wish to plot the z-values of all pairs.
#' @param export (character length 1) Format to export data
#' @examples
#' econometrics.coint_chart(plot=TRUE)
#' @export
#* @get /econometrics.coint_chart
econometrics.coint_chart <- function(datasets, significant = FALSE, plot = TRUE, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$econometrics$coint_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Compare regression results between Panel Data regressions.
#'
#' @description Wrapper for Python function econometrics.comparison from OpenBB Terminal SDK
#'
#' @param export (character length 1) Format to export data
#' @export
#* @get /econometrics.comparison
econometrics.comparison <- function(regressions, export = "", sheet_name) {
  o <- do.call(what=py$openbb$econometrics$comparison, args=as.list(rlang::call_match())[-1])
  o
}


#' Calculate test statistics for Durbin Watson autocorrelation
#'
#' @description Wrapper for Python function econometrics.dwat from OpenBB Terminal SDK
#'
#' @param model (Python type: statsmodels.regression.linear_model.RegressionResultsWrapper) Previously fit statsmodels OLS.
#' @export
#* @get /econometrics.dwat
econometrics.dwat <- function(model) {
  o <- do.call(what=py$openbb$econometrics$dwat, args=as.list(rlang::call_match())[-1])
  o
}


#' Show Durbin-Watson autocorrelation tests
#'
#' @description Wrapper for Python function econometrics.dwat_chart from OpenBB Terminal SDK
#'
#' @param model (Python type: statsmodels.regression.linear_model.RegressionResultsWrapper) A fit statsmodels OLS model.
#' @param dependent_variable (Python type: pandas.core.series.Series) The dependent variable for plotting
#' @param plot (logical length 1) Whether to plot the residuals
#' @param export (character length 1) Format to export data
#' @examples
#' econometrics.dwat_chart(plot=TRUE)
#' @export
#* @get /econometrics.dwat_chart
econometrics.dwat_chart <- function(model, dependent_variable, plot = TRUE, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$econometrics$dwat_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' First differencing is an alternative to using fixed effects when there might be correlation.
#'
#' @description Wrapper for Python function econometrics.fdols from OpenBB Terminal SDK
#'
#' @export
#* @get /econometrics.fdols
econometrics.fdols <- function(Y, X) {
  o <- do.call(what=py$openbb$econometrics$fdols, args=as.list(rlang::call_match())[-1])
  o
}


#' When effects are correlated with the regressors the RE and BE estimators are not consistent.
#'
#' @description Wrapper for Python function econometrics.fe from OpenBB Terminal SDK
#'
#' @param entity_effects (logical length 1) Whether to include entity effects
#' @param time_effects (logical length 1) Whether to include time effects
#' @examples
#' econometrics.fe(entity_effects=FALSE, time_effects=FALSE)
#' @export
#* @get /econometrics.fe
econometrics.fe <- function(Y, X, entity_effects = FALSE, time_effects = FALSE) {
  o <- do.call(what=py$openbb$econometrics$fe, args=as.list(rlang::call_match())[-1])
  o
}


#' This function creates a DataFrame with the required regression data as
#'
#' @description Wrapper for Python function econometrics.get_regression_data from OpenBB Terminal SDK
#'
#' @param regression_type (character length 1) The type of regression that is executed.
#' @export
#* @get /econometrics.get_regression_data
econometrics.get_regression_data <- function(regression_variables, data, regression_type = "") {
  o <- do.call(what=py$openbb$econometrics$get_regression_data, args=as.list(rlang::call_match())[-1])
  o
}


#' Calculate granger tests
#'
#' @description Wrapper for Python function econometrics.granger from OpenBB Terminal SDK
#'
#' @param dependent_series (Python type: pandas.core.series.Series) The series you want to test Granger Causality for.
#' @param independent_series (Python type: pandas.core.series.Series) The series that you want to test whether it Granger-causes time_series_y
#' @param lags (integer length 1) The amount of lags for the Granger test. By default, this is set to 3.
#' @examples
#' econometrics.granger(lags=3)
#' @export
#* @get /econometrics.granger
econometrics.granger <- function(dependent_series, independent_series, lags = 3) {
  o <- do.call(what=py$openbb$econometrics$granger, args=as.list(rlang::call_match())[-1])
  o
}


#' Show granger tests
#'
#' @description Wrapper for Python function econometrics.granger_chart from OpenBB Terminal SDK
#'
#' @param dependent_series (Python type: pandas.core.series.Series) The series you want to test Granger Causality for.
#' @param independent_series (Python type: pandas.core.series.Series) The series that you want to test whether it Granger-causes dependent_series
#' @param lags (integer length 1) The amount of lags for the Granger test. By default, this is set to 3.
#' @param confidence_level (numeric length 1) The confidence level you wish to use. By default, this is set to 0.05.
#' @param export (character length 1) Format to export data
#' @examples
#' econometrics.granger_chart(lags=3, confidence_level=0.05)
#' @export
#* @get /econometrics.granger_chart
econometrics.granger_chart <- function(dependent_series, independent_series, lags = 3, confidence_level = 0.05, export = "", sheet_name) {
  o <- do.call(what=py$openbb$econometrics$granger_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Load custom file into dataframe.
#'
#' @description Wrapper for Python function econometrics.load from OpenBB Terminal SDK
#'
#' @param file (character length 1) Path to file
#' @export
#* @get /econometrics.load
econometrics.load <- function(file, data_files, data_examples) {
  o <- do.call(what=py$openbb$econometrics$load, args=as.list(rlang::call_match())[-1])
  o
}


#' The distribution of returns and generate statistics on the relation to the normal curve.
#'
#' @description Wrapper for Python function econometrics.norm from OpenBB Terminal SDK
#'
#' @param data (Python type: pandas.core.series.Series) A series or column of a DataFrame to test normality for
#' @export
#* @get /econometrics.norm
econometrics.norm <- function(data) {
  o <- do.call(what=py$openbb$econometrics$norm, args=as.list(rlang::call_match())[-1])
  o
}


#' Determine the normality of a timeseries.
#'
#' @description Wrapper for Python function econometrics.norm_chart from OpenBB Terminal SDK
#'
#' @param data (Python type: pandas.core.series.Series) Series of custom data
#' @param dataset (character length 1) Dataset name
#' @param column (character length 1) Column for y data
#' @param plot (logical length 1) Whether you wish to plot a histogram
#' @param export (character length 1) Format to export data.
#' @examples
#' econometrics.norm_chart(plot=TRUE)
#' @export
#* @get /econometrics.norm_chart
econometrics.norm_chart <- function(data, dataset = "", column = "", plot = TRUE, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$econometrics$norm_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Performs an OLS regression on timeseries data. [Source: Statsmodels]
#'
#' @description Wrapper for Python function econometrics.ols from OpenBB Terminal SDK
#'
#' @param Y (data.frame) Dependent variable series.
#' @param X (data.frame) Dataframe of independent variables series.
#' @export
#* @get /econometrics.ols
econometrics.ols <- function(Y, X) {
  o <- do.call(what=py$openbb$econometrics$ols, args=as.list(rlang::call_match())[-1])
  o
}


#' Obtain columns-dataset combinations from loaded in datasets that can be used in other commands
#'
#' @description Wrapper for Python function econometrics.options from OpenBB Terminal SDK
#'
#' @param dataset_name (character length 1) The dataset you wish to show the options for.
#' @export
#* @get /econometrics.options
econometrics.options <- function(datasets, dataset_name = "") {
  o <- do.call(what=py$openbb$econometrics$options, args=as.list(rlang::call_match())[-1])
  o
}


#' Plot custom data
#'
#' @description Wrapper for Python function econometrics.options_chart from OpenBB Terminal SDK
#'
#' @param export (character length 1) Format to export image
#' @export
#* @get /econometrics.options_chart
econometrics.options_chart <- function(datasets, dataset_name, export = "", sheet_name) {
  o <- do.call(what=py$openbb$econometrics$options_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Based on the regression type, this function decides what regression to run.
#'
#' @description Wrapper for Python function econometrics.panel from OpenBB Terminal SDK
#'
#' @param Y (data.frame) Dataframe containing the dependent variable.
#' @param X (data.frame) Dataframe containing the independent variables.
#' @param regression_type (character length 1) The type of regression you wish to execute.
#' @param entity_effects (logical length 1) Whether to apply Fixed Effects on entities.
#' @param time_effects (logical length 1) Whether to apply Fixed Effects on time.
#' @examples
#' econometrics.panel(regression_type='OLS', entity_effects=FALSE, time_effects=FALSE)
#' @export
#* @get /econometrics.panel
econometrics.panel <- function(Y, X, regression_type = "OLS", entity_effects = FALSE, time_effects = FALSE) {
  o <- do.call(what=py$openbb$econometrics$panel, args=as.list(rlang::call_match())[-1])
  o
}


#' Based on the regression type, this function decides what regression to run.
#'
#' @description Wrapper for Python function econometrics.panel_chart from OpenBB Terminal SDK
#'
#' @param regression_type (character length 1) The type of regression you wish to execute. Choose from:
#'     OLS, POLS, RE, BOLS, FE
#' @param entity_effects (logical length 1) Whether to apply Fixed Effects on entities.
#' @param time_effects (logical length 1) Whether to apply Fixed Effects on time.
#' @param export (character length 1) Format to export data
#' @examples
#' econometrics.panel_chart(regression_type='OLS', entity_effects=FALSE, time_effects=FALSE)
#' @export
#* @get /econometrics.panel_chart
econometrics.panel_chart <- function(Y, X, regression_type = "OLS", entity_effects = FALSE, time_effects = FALSE, export = "", sheet_name) {
  o <- do.call(what=py$openbb$econometrics$panel_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' PooledOLS is just plain OLS that understands that various panel data structures.
#'
#' @description Wrapper for Python function econometrics.pols from OpenBB Terminal SDK
#'
#' @export
#* @get /econometrics.pols
econometrics.pols <- function(Y, X) {
  o <- do.call(what=py$openbb$econometrics$pols, args=as.list(rlang::call_match())[-1])
  o
}


#' The random effects model is virtually identical to the pooled OLS model except that is accounts for the
#'
#' @description Wrapper for Python function econometrics.re from OpenBB Terminal SDK
#'
#' @export
#* @get /econometrics.re
econometrics.re <- function(Y, X) {
  o <- do.call(what=py$openbb$econometrics$re, args=as.list(rlang::call_match())[-1])
  o
}


#' Calculate test statistics for unit roots
#'
#' @description Wrapper for Python function econometrics.root from OpenBB Terminal SDK
#'
#' @param data (Python type: pandas.core.series.Series) Series or column of DataFrame of target variable
#' @param fuller_reg (character length 1) Type of regression of ADF test
#' @param kpss_reg (character length 1) Type of regression for KPSS test
#' @examples
#' econometrics.root(fuller_reg='c', kpss_reg='c')
#' @export
#* @get /econometrics.root
econometrics.root <- function(data, fuller_reg = "c", kpss_reg = "c") {
  o <- do.call(what=py$openbb$econometrics$root, args=as.list(rlang::call_match())[-1])
  o
}


#' Determine the normality of a timeseries.
#'
#' @description Wrapper for Python function econometrics.root_chart from OpenBB Terminal SDK
#'
#' @param data (Python type: pandas.core.series.Series) Series of target variable
#' @param dataset (character length 1) Name of the dataset
#' @param column (character length 1) Name of the column
#' @param fuller_reg (character length 1) Type of regression of ADF test. Choose c, ct, ctt, or nc
#' @param kpss_reg (character length 1) Type of regression for KPSS test. Choose c or ct
#' @param export (character length 1) Format to export data.
#' @examples
#' econometrics.root_chart(fuller_reg='c', kpss_reg='c')
#' @export
#* @get /econometrics.root_chart
econometrics.root_chart <- function(data, dataset = "", column = "", fuller_reg = "c", kpss_reg = "c", export = "", sheet_name) {
  o <- do.call(what=py$openbb$econometrics$root_chart, args=as.list(rlang::call_match())[-1])
  o
}


#'
#' @description Wrapper for Python function economy.about from OpenBB Terminal SDK
#'
#' @export
#* @get /economy.about
economy.about <- function() {
  o <- do.call(what=py$openbb$economy$about, args=as.list(rlang::call_match())[-1])
  o
}


#' Get available indices
#'
#' @description Wrapper for Python function economy.available_indices from OpenBB Terminal SDK
#'
#' @export
#* @get /economy.available_indices
economy.available_indices <- function() {
  o <- do.call(what=py$openbb$economy$available_indices, args=as.list(rlang::call_match())[-1])
  o
}


#' Display Big Mac Index for given countries
#'
#' @description Wrapper for Python function economy.bigmac from OpenBB Terminal SDK
#'
#' @export
#* @get /economy.bigmac
economy.bigmac <- function(country_codes) {
  o <- do.call(what=py$openbb$economy$bigmac, args=as.list(rlang::call_match())[-1])
  o
}


#' Display Big Mac Index for given countries
#'
#' @description Wrapper for Python function economy.bigmac_chart from OpenBB Terminal SDK
#'
#' @param raw (logical length 1) Flag to display raw data, by default False
#' @param export (character length 1) Format data, by default ""
#' @examples
#' economy.bigmac_chart(raw=FALSE)
#' @export
#* @get /economy.bigmac_chart
economy.bigmac_chart <- function(country_codes, raw = FALSE, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$economy$bigmac_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get available country codes for Bigmac index
#'
#' @description Wrapper for Python function economy.country_codes from OpenBB Terminal SDK
#'
#' @export
#* @get /economy.country_codes
economy.country_codes <- function() {
  o <- do.call(what=py$openbb$economy$country_codes, args=as.list(rlang::call_match())[-1])
  o
}


#' Obtain CPI data from FRED. [Source: FRED]
#'
#' @description Wrapper for Python function economy.cpi from OpenBB Terminal SDK
#'
#' @param countries (Python type: list) The country or countries you want to see.
#' @param units (character length 1) The units you want to see, can be "growth_previous", "growth_same" or "index_2015".
#' @param frequency (character length 1) The frequency you want to see, either "annual", monthly" or "quarterly".
#' @param harmonized (logical length 1) Whether you wish to obtain harmonized data.
#' @param smart_select (logical length 1) Whether to assist with the selection.
#' @param options (logical length 1) Whether to return the options.
#' @examples
#' economy.cpi(interval='m', start_year=2010)
#' @export
#* @get /economy.cpi
economy.cpi <- function(countries, units = "", frequency = "", harmonized = FALSE, smart_select = TRUE, options = FALSE, start_date, end_date) {
  o <- do.call(what=py$openbb$economy$cpi, args=as.list(rlang::call_match())[-1])
  o
}


#' Plot CPI data. [Source: FRED]
#'
#' @description Wrapper for Python function economy.cpi_chart from OpenBB Terminal SDK
#'
#' @param countries (Python type: list) List of countries to plot
#' @param units (character length 1) Units of the data, either "growth_same", "growth_previous", "index_2015"
#' @param frequency (character length 1) Frequency of the data, either "monthly", "quarterly" or "annual"
#' @param harmonized (logical length 1) Whether to use harmonized data
#' @param smart_select (logical length 1) Whether to automatically select the best series
#' @param options (logical length 1) Whether to show options
#' @param raw (logical length 1) Show raw data
#' @param export (character length 1) Export data to csv or excel file
#' @param sheet_name (character length 1) Name of the sheet to export to
#' @examples
#' economy.cpi_chart(interval='m', start_year=2010, raw=FALSE)
#' @export
#* @get /economy.cpi_chart
economy.cpi_chart <- function(countries, units = "growth_same", frequency = "monthly", harmonized = FALSE, smart_select = TRUE, options = FALSE, start_date, end_date, raw = FALSE, export = "", sheet_name = "", external_axes) {
  o <- do.call(what=py$openbb$economy$cpi_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Scrape data for global currencies
#'
#' @description Wrapper for Python function economy.currencies from OpenBB Terminal SDK
#'
#' @export
#* @get /economy.currencies
economy.currencies <- function() {
  o <- do.call(what=py$openbb$economy$currencies, args=as.list(rlang::call_match())[-1])
  o
}


#' Get economic calendar for countries between specified dates
#'
#' @description Wrapper for Python function economy.events from OpenBB Terminal SDK
#'
#' @export
#* @get /economy.events
economy.events <- function(countries, start_date, end_date) {
  o <- do.call(what=py$openbb$economy$events, args=as.list(rlang::call_match())[-1])
  o
}


#' Get Series data. [Source: FRED]
#'
#' @description Wrapper for Python function economy.fred from OpenBB Terminal SDK
#'
#' @export
#* @get /economy.fred
economy.fred <- function(series_ids, start_date, end_date) {
  o <- do.call(what=py$openbb$economy$fred, args=as.list(rlang::call_match())[-1])
  o
}


#' Display (multiple) series from https://fred.stlouisfed.org. [Source: FRED]
#'
#' @description Wrapper for Python function economy.fred_chart from OpenBB Terminal SDK
#'
#' @param limit (integer length 1) Number of data points to display.
#' @param raw (logical length 1) Output only raw data
#' @param export (character length 1) Export data to csv,json,xlsx or png,jpg,pdf,svg file
#' @examples
#' economy.fred_chart(limit=10, raw=FALSE)
#' @export
#* @get /economy.fred_chart
economy.fred_chart <- function(series_ids, start_date, end_date, limit = 10, get_data = FALSE, raw = FALSE, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$economy$fred_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get Series IDs. [Source: FRED]
#'
#' @description Wrapper for Python function economy.fred_ids from OpenBB Terminal SDK
#'
#' @param search_query (character length 1) Text query to search on fred series notes database
#' @param limit (integer length 1) Maximum number of series IDs to output
#' @examples
#' economy.fred_ids(limit=-1)
#' @export
#* @get /economy.fred_ids
economy.fred_ids <- function(search_query, limit = -1) {
  o <- do.call(what=py$openbb$economy$fred_ids, args=as.list(rlang::call_match())[-1])
  o
}


#' Get series notes. [Source: FRED]
#'
#' @description Wrapper for Python function economy.fred_notes from OpenBB Terminal SDK
#'
#' @param search_query (character length 1) Text query to search on fred series notes database
#' @param limit (integer length 1) Maximum number of series notes to display
#' @examples
#' economy.fred_notes(limit=-1)
#' @export
#* @get /economy.fred_notes
economy.fred_notes <- function(search_query, limit = -1) {
  o <- do.call(what=py$openbb$economy$fred_notes, args=as.list(rlang::call_match())[-1])
  o
}


#' Get futures data. [Source: Finviz]
#'
#' @description Wrapper for Python function economy.future from OpenBB Terminal SDK
#'
#' @param future_type (character length 1) From the following: Indices, Energy, Metals, Meats, Grains, Softs, Bonds, Currencies
#' @param sortby (character length 1) Column to sort by
#' @param ascend (logical length 1) Flag to sort in ascending order
#' @examples
#' economy.future(future_type='Indices', sortby='ticker', ascend=FALSE)
#' @export
#* @get /economy.future
economy.future <- function(future_type = "Indices", sortby = "ticker", ascend = FALSE) {
  o <- do.call(what=py$openbb$economy$future, args=as.list(rlang::call_match())[-1])
  o
}


#' Get futures data.
#'
#' @description Wrapper for Python function economy.futures from OpenBB Terminal SDK
#'
#' @param source (Python type: inspect._empty) Data source for futures data.  From the following: WSJ, Finviz
#' @param future_type (character length 1) (Finviz only) Future type to get.  Can be: Indices, Energy, Metals, Meats, Grains, Softs, Bonds, Currencies.
#' @examples
#' economy.futures(source='WSJ', future_type='Indices')
#' @export
#* @get /economy.futures
economy.futures <- function(source, future_type = "Indices") {
  o <- do.call(what=py$openbb$economy$futures, args=as.list(rlang::call_match())[-1])
  o
}


#' Get group available
#'
#' @description Wrapper for Python function economy.get_groups from OpenBB Terminal SDK
#'
#' @export
#* @get /economy.get_groups
economy.get_groups <- function() {
  o <- do.call(what=py$openbb$economy$get_groups, args=as.list(rlang::call_match())[-1])
  o
}


#' Scrape data for global bonds
#'
#' @description Wrapper for Python function economy.glbonds from OpenBB Terminal SDK
#'
#' @export
#* @get /economy.glbonds
economy.glbonds <- function() {
  o <- do.call(what=py$openbb$economy$glbonds, args=as.list(rlang::call_match())[-1])
  o
}


#' Get data on selected indices over time [Source: Yahoo Finance]
#'
#' @description Wrapper for Python function economy.index from OpenBB Terminal SDK
#'
#' @param indices (Python type: list) A list of indices to get data. Available indices can be accessed through economy.available_indices().
#' @param interval (character length 1) Valid intervals: 1m,2m,5m,15m,30m,60m,90m,1h,1d,5d,1wk,1mo,3mo
#'     Intraday data cannot extend last 60 days
#' @param column (character length 1) Which column to load in, by default "Adjusted Close".
#' @param returns (logical length 1) Flag to show cumulative returns on index
#' @examples
#' economy.index(interval='1d', column='Adj Close', returns=FALSE)
#' @export
#* @get /economy.index
economy.index <- function(indices, interval = "1d", start_date, end_date, column = "Adj Close", returns = FALSE) {
  o <- do.call(what=py$openbb$economy$index, args=as.list(rlang::call_match())[-1])
  o
}


#' Load (and show) the selected indices over time [Source: Yahoo Finance]
#'
#' @description Wrapper for Python function economy.index_chart from OpenBB Terminal SDK
#'
#' @param indices (Python type: list) A list of indices you wish to load (and plot).
#'     Available indices can be accessed through economy.available_indices().
#' @param interval (character length 1) Valid intervals: 1m,2m,5m,15m,30m,60m,90m,1h,1d,5d,1wk,1mo,3mo
#'     Intraday data cannot extend last 60 days
#' @param column (character length 1) Which column to load in, by default this is the Adjusted Close.
#' @param returns (logical length 1) Flag to show cumulative returns on index
#' @param raw (logical length 1) Whether to display the raw output.
#' @param export (character length 1) Export data to csv,json,xlsx or png,jpg,pdf,svg file
#' @examples
#' economy.index_chart(interval='1d', column='Adj Close', returns=FALSE, raw=FALSE)
#' @export
#* @get /economy.index_chart
economy.index_chart <- function(indices, interval = "1d", start_date, end_date, column = "Adj Close", returns = FALSE, raw = FALSE, external_axes, export = "", sheet_name) {
  o <- do.call(what=py$openbb$economy$index_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get the top US indices
#'
#' @description Wrapper for Python function economy.indices from OpenBB Terminal SDK
#'
#' @export
#* @get /economy.indices
economy.indices <- function() {
  o <- do.call(what=py$openbb$economy$indices, args=as.list(rlang::call_match())[-1])
  o
}


#' This functions groups the data queried from the EconDB database [Source: EconDB]
#'
#' @description Wrapper for Python function economy.macro from OpenBB Terminal SDK
#'
#' @param transform (character length 1) The selected transform. Available transforms can be accessed through get_macro_transform().
#' @param start_date (character length 1) The starting date, format "YEAR-MONTH-DAY", i.e. 2010-12-31.
#' @param symbol (character length 1) In what currency you wish to convert all values.
#' @examples
#' economy.macro(start_date='1900-01-01')
#' @export
#* @get /economy.macro
economy.macro <- function(parameters, countries, transform = "", start_date = "1900-01-01", end_date, symbol = "") {
  o <- do.call(what=py$openbb$economy$macro, args=as.list(rlang::call_match())[-1])
  o
}


#' Show the received macro data about a company [Source: EconDB]
#'
#' @description Wrapper for Python function economy.macro_chart from OpenBB Terminal SDK
#'
#' @param transform (character length 1) select data transformation from:
#'         '' - no transformation
#'         'TPOP' - total percentage change on period,
#'         'TOYA' - total percentage since 1 year ago,
#'         'TUSD' - level USD,
#'         'TPGP' - Percentage of GDP,
#'         'TNOR' - Start = 100
#' @param start_date (character length 1) The starting date, format "YEAR-MONTH-DAY", i.e. 2010-12-31.
#' @param symbol (character length 1) In what currency you wish to convert all values.
#' @param raw (logical length 1) Whether to display the raw output.
#' @param export (character length 1) Export data to csv,json,xlsx or png,jpg,pdf,svg file
#' @examples
#' economy.macro_chart(start_date='1900-01-01', raw=FALSE)
#' @export
#* @get /economy.macro_chart
economy.macro_chart <- function(parameters, countries, transform = "", start_date = "1900-01-01", end_date, symbol = "", raw = FALSE, external_axes, export = "", sheet_name) {
  o <- do.call(what=py$openbb$economy$macro_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' This function returns the available countries and respective currencies.
#'
#' @description Wrapper for Python function economy.macro_countries from OpenBB Terminal SDK
#'
#' @export
#* @get /economy.macro_countries
economy.macro_countries <- function() {
  o <- do.call(what=py$openbb$economy$macro_countries, args=as.list(rlang::call_match())[-1])
  o
}


#' This function returns the available macro parameters with detail.
#'
#' @description Wrapper for Python function economy.macro_parameters from OpenBB Terminal SDK
#'
#' @export
#* @get /economy.macro_parameters
economy.macro_parameters <- function() {
  o <- do.call(what=py$openbb$economy$macro_parameters, args=as.list(rlang::call_match())[-1])
  o
}


#' Scrape data for market overview
#'
#' @description Wrapper for Python function economy.overview from OpenBB Terminal SDK
#'
#' @export
#* @get /economy.overview
economy.overview <- function() {
  o <- do.call(what=py$openbb$economy$overview, args=as.list(rlang::call_match())[-1])
  o
}


#' Opens Finviz map website in a browser. [Source: Finviz]
#'
#' @description Wrapper for Python function economy.perfmap from OpenBB Terminal SDK
#'
#' @param period (character length 1) Performance period. Available periods are 1d, 1w, 1m, 3m, 6m, 1y.
#' @examples
#' economy.perfmap(period='1d')
#' @export
#* @get /economy.perfmap
economy.perfmap <- function(period = "1d", map_filter = "sp500") {
  o <- do.call(what=py$openbb$economy$perfmap, args=as.list(rlang::call_match())[-1])
  o
}


#' Get group (sectors, industry or country) performance data. [Source: Finviz]
#'
#' @description Wrapper for Python function economy.performance from OpenBB Terminal SDK
#'
#' @param group (character length 1) Group by category. Available groups can be accessed through get_groups().
#' @param sortby (character length 1) Column to sort by
#' @param ascend (logical length 1) Flag to sort in ascending order
#' @examples
#' economy.performance(group='sector', sortby='Name', ascend=TRUE)
#' @export
#* @get /economy.performance
economy.performance <- function(group = "sector", sortby = "Name", ascend = TRUE) {
  o <- do.call(what=py$openbb$economy$performance, args=as.list(rlang::call_match())[-1])
  o
}


#' Get real-time performance sector data
#'
#' @description Wrapper for Python function economy.rtps from OpenBB Terminal SDK
#'
#' @export
#* @get /economy.rtps
economy.rtps <- function() {
  o <- do.call(what=py$openbb$economy$rtps, args=as.list(rlang::call_match())[-1])
  o
}


#' Display Real-Time Performance sector. [Source: AlphaVantage]
#'
#' @description Wrapper for Python function economy.rtps_chart from OpenBB Terminal SDK
#'
#' @param raw (logical length 1) Output only raw data
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' economy.rtps_chart(raw=FALSE)
#' @export
#* @get /economy.rtps_chart
economy.rtps_chart <- function(raw = FALSE, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$economy$rtps_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Search indices by keyword. [Source: FinanceDatabase]
#'
#' @description Wrapper for Python function economy.search_index from OpenBB Terminal SDK
#'
#' @param keyword (Python type: list) The keyword you wish to search for. This can include spaces.
#' @param limit (integer length 1) The amount of views you want to show, by default this is set to 10.
#' @export
#* @get /economy.search_index
economy.search_index <- function(keyword, limit = 10) {
  o <- do.call(what=py$openbb$economy$search_index, args=as.list(rlang::call_match())[-1])
  o
}


#' Display finviz spectrum in system viewer [Source: Finviz]
#'
#' @description Wrapper for Python function economy.spectrum from OpenBB Terminal SDK
#'
#' @param group (character length 1) Group by category. Available groups can be accessed through get_groups().
#' @param export (character length 1) Format to export data
#' @examples
#' economy.spectrum(group='sector')
#' @export
#* @get /economy.spectrum
economy.spectrum <- function(group = "sector", export = "", sheet_name) {
  o <- do.call(what=py$openbb$economy$spectrum, args=as.list(rlang::call_match())[-1])
  o
}


#' Get U.S. Treasury rates [Source: EconDB]
#'
#' @description Wrapper for Python function economy.treasury from OpenBB Terminal SDK
#'
#' @param frequency (character length 1) Frequency of the data, this can be annually, monthly, weekly or daily.
#' @param start_date (character length 1) Starting date, format "YEAR-MONTH-DAY", i.e. 2010-12-31.
#' @examples
#' economy.treasury(frequency='monthly', start_date='1900-01-01')
#' @export
#* @get /economy.treasury
economy.treasury <- function(instruments, maturities, frequency = "monthly", start_date = "1900-01-01", end_date) {
  o <- do.call(what=py$openbb$economy$treasury, args=as.list(rlang::call_match())[-1])
  o
}


#' Display U.S. Treasury rates [Source: EconDB]
#'
#' @description Wrapper for Python function economy.treasury_chart from OpenBB Terminal SDK
#'
#' @param frequency (character length 1) Frequency of the data, this can be daily, weekly, monthly or annually
#' @param start_date (character length 1) Starting date, format "YEAR-MONTH-DAY", i.e. 2010-12-31.
#' @param raw (logical length 1) Whether to display the raw output.
#' @param export (character length 1) Export data to csv,json,xlsx or png,jpg,pdf,svg file
#' @examples
#' economy.treasury_chart(frequency='monthly', start_date='1900-01-01', raw=FALSE)
#' @export
#* @get /economy.treasury_chart
economy.treasury_chart <- function(instruments, maturities, frequency = "monthly", start_date = "1900-01-01", end_date, raw = FALSE, external_axes, export = "", sheet_name) {
  o <- do.call(what=py$openbb$economy$treasury_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get treasury maturity options [Source: EconDB]
#'
#' @description Wrapper for Python function economy.treasury_maturities from OpenBB Terminal SDK
#'
#' @export
#* @get /economy.treasury_maturities
economy.treasury_maturities <- function() {
  o <- do.call(what=py$openbb$economy$treasury_maturities, args=as.list(rlang::call_match())[-1])
  o
}


#' Scrape data for us bonds
#'
#' @description Wrapper for Python function economy.usbonds from OpenBB Terminal SDK
#'
#' @export
#* @get /economy.usbonds
economy.usbonds <- function() {
  o <- do.call(what=py$openbb$economy$usbonds, args=as.list(rlang::call_match())[-1])
  o
}


#' Get group (sectors, industry or country) valuation data. [Source: Finviz]
#'
#' @description Wrapper for Python function economy.valuation from OpenBB Terminal SDK
#'
#' @param group (character length 1) Group by category. Available groups can be accessed through get_groups().
#' @param sortby (character length 1) Column to sort by
#' @param ascend (logical length 1) Flag to sort in ascending order
#' @examples
#' economy.valuation(group='sector', sortby='Name', ascend=TRUE)
#' @export
#* @get /economy.valuation
economy.valuation <- function(group = "sector", sortby = "Name", ascend = TRUE) {
  o <- do.call(what=py$openbb$economy$valuation, args=as.list(rlang::call_match())[-1])
  o
}


#'
#' @description Wrapper for Python function etf.about from OpenBB Terminal SDK
#'
#' @export
#* @get /etf.about
etf.about <- function() {
  o <- do.call(what=py$openbb$etf$about, args=as.list(rlang::call_match())[-1])
  o
}


#' Show candle plot of loaded ticker.
#'
#' @description Wrapper for Python function etf.candle from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Ticker name
#' @param use_matplotlib (logical length 1) Flag to use matplotlib instead of interactive plotly chart
#' @param intraday (logical length 1) Flag for intraday data for plotly range breaks
#' @param add_trend (logical length 1) Flag to add high and low trends to chart
#' @param interval (integer length 1) Interval (in minutes) to get data 1, 5, 15, 30, 60 or 1440
#' @param prepost (logical length 1) Pre and After hours data
#' @param source (character length 1) Source of data extracted
#' @param weekly (logical length 1) Flag to get weekly data
#' @param monthly (logical length 1) Flag to get monthly data
#' @param raw (logical length 1) Flag to display raw data, by default False
#' @param yscale (character length 1) Linear or log for yscale
#' @examples
#' etf.candle(symbol='AMZN', use_matplotlib=TRUE, intraday=FALSE, add_trend=FALSE, interval=1440, prepost=FALSE, source='YahooFinance', weekly=FALSE, monthly=FALSE, raw=FALSE, yscale='linear')
#' @export
#* @get /etf.candle
etf.candle <- function(symbol, data, use_matplotlib = TRUE, intraday = FALSE, add_trend = FALSE, ma, asset_type = "", start_date, interval = 1440, end_date, prepost = FALSE, source = "YahooFinance", weekly = FALSE, monthly = FALSE, external_axes, raw = FALSE, yscale = "linear") {
  o <- do.call(what=py$openbb$etf$candle, args=as.list(rlang::call_match())[-1])
  o
}


#' Compare selected ETFs
#'
#' @description Wrapper for Python function etf.compare from OpenBB Terminal SDK
#'
#' @export
#* @get /etf.compare
etf.compare <- function(symbols) {
  o <- do.call(what=py$openbb$etf$compare, args=as.list(rlang::call_match())[-1])
  o
}


#' Return a selection of ETFs based on category filtered by total assets.
#'
#' @description Wrapper for Python function etf.etf_by_category from OpenBB Terminal SDK
#'
#' @param category (character length 1) Search by category to find ETFs matching the criteria.
#' @export
#* @get /etf.etf_by_category
etf.etf_by_category <- function(category) {
  o <- do.call(what=py$openbb$etf$etf_by_category, args=as.list(rlang::call_match())[-1])
  o
}


#' Get an ETF symbol and name based on ETF string to search. [Source: StockAnalysis]
#'
#' @description Wrapper for Python function etf.etf_by_name from OpenBB Terminal SDK
#'
#' @param name_to_search (character length 1) ETF name to match
#' @export
#* @get /etf.etf_by_name
etf.etf_by_name <- function(name_to_search) {
  o <- do.call(what=py$openbb$etf$etf_by_name, args=as.list(rlang::call_match())[-1])
  o
}


#' Get ETF holdings
#'
#' @description Wrapper for Python function etf.holdings from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Symbol to get holdings for
#' @examples
#' etf.holdings(symbol='AMZN')
#' @export
#* @get /etf.holdings
etf.holdings <- function(symbol) {
  o <- do.call(what=py$openbb$etf$holdings, args=as.list(rlang::call_match())[-1])
  o
}


#' Return a selection of ETFs based on description filtered by total assets.
#'
#' @description Wrapper for Python function etf.ld from OpenBB Terminal SDK
#'
#' @param description (character length 1) Search by description to find ETFs matching the criteria.
#' @export
#* @get /etf.ld
etf.ld <- function(description) {
  o <- do.call(what=py$openbb$etf$ld, args=as.list(rlang::call_match())[-1])
  o
}


#' Return a selection of ETFs based on name filtered by total assets. [Source: Finance Database]
#'
#' @description Wrapper for Python function etf.ln from OpenBB Terminal SDK
#'
#' @param name (character length 1) Search by name to find ETFs matching the criteria.
#' @export
#* @get /etf.ln
etf.ln <- function(name) {
  o <- do.call(what=py$openbb$etf$ln, args=as.list(rlang::call_match())[-1])
  o
}


#' Load a symbol to perform analysis using the string above as a template.
#'
#' @description Wrapper for Python function etf.load from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Ticker to get data
#' @param interval (integer length 1) Interval (in minutes) to get data 1, 5, 15, 30, 60 or 1440
#' @param prepost (logical length 1) Pre and After hours data
#' @param source (character length 1) Source of data extracted
#' @param weekly (logical length 1) Flag to get weekly data
#' @param monthly (logical length 1) Flag to get monthly data
#' @param verbose (logical length 1) Display verbose information on what was the symbol that was loaded
#' @examples
#' etf.load(symbol='AMZN', interval=1440, prepost=FALSE, source='YahooFinance', weekly=FALSE, monthly=FALSE, verbose=TRUE)
#' @export
#* @get /etf.load
etf.load <- function(symbol, start_date, interval = 1440, end_date, prepost = FALSE, source = "YahooFinance", weekly = FALSE, monthly = FALSE, verbose = TRUE) {
  o <- do.call(what=py$openbb$etf$load, args=as.list(rlang::call_match())[-1])
  o
}


#' Get news for a given term. [Source: NewsAPI]
#'
#' @description Wrapper for Python function etf.news from OpenBB Terminal SDK
#'
#' @param query (character length 1) term to search on the news articles
#' @param show_newest (logical length 1) flag to show newest articles first
#' @param sources (character length 1) sources to exclusively show news from (comma separated)
#' @examples
#' etf.news(show_newest=TRUE)
#' @export
#* @get /etf.news
etf.news <- function(query, limit = 10, start_date, show_newest = TRUE, sources = "") {
  o <- do.call(what=py$openbb$etf$news, args=as.list(rlang::call_match())[-1])
  o
}


#' Prints table showing news for a given term. [Source: NewsAPI]
#'
#' @description Wrapper for Python function etf.news_chart from OpenBB Terminal SDK
#'
#' @param query (character length 1) term to search on the news articles
#' @param limit (integer length 1) number of articles to display
#' @param show_newest (logical length 1) flag to show newest articles first
#' @param sources (character length 1) sources to exclusively show news from
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' etf.news_chart(limit=3, show_newest=TRUE)
#' @export
#* @get /etf.news_chart
etf.news_chart <- function(query, limit = 3, start_date, show_newest = TRUE, sources = "", export = "", sheet_name) {
  o <- do.call(what=py$openbb$etf$news_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get overview data for selected etf
#'
#' @description Wrapper for Python function etf.overview from OpenBB Terminal SDK
#'
#' @export
#* @get /etf.overview
etf.overview <- function(symbol) {
  o <- do.call(what=py$openbb$etf$overview, args=as.list(rlang::call_match())[-1])
  o
}


#' Gets all etf names and symbols
#'
#' @description Wrapper for Python function etf.symbols from OpenBB Terminal SDK
#'
#' @export
#* @get /etf.symbols
etf.symbols <- function() {
  o <- do.call(what=py$openbb$etf$symbols, args=as.list(rlang::call_match())[-1])
  o
}


#' Return sector weightings allocation of ETF. [Source: FinancialModelingPrep]
#'
#' @description Wrapper for Python function etf.weights from OpenBB Terminal SDK
#'
#' @param name (character length 1) ETF name
#' @export
#* @get /etf.weights
etf.weights <- function(name) {
  o <- do.call(what=py$openbb$etf$weights, args=as.list(rlang::call_match())[-1])
  o
}


#'
#' @description Wrapper for Python function etf.disc.about from OpenBB Terminal SDK
#'
#' @export
#* @get /etf.disc.about
etf.disc.about <- function() {
  o <- do.call(what=py$openbb$etf$disc$about, args=as.list(rlang::call_match())[-1])
  o
}


#' Scrape data for top etf movers.
#'
#' @description Wrapper for Python function etf.disc.mover from OpenBB Terminal SDK
#'
#' @param sort_type (character length 1) Data to get. Can be "gainers", "decliners" or "active"
#' @examples
#' etf.disc.mover(sort_type='gainers')
#' @export
#* @get /etf.disc.mover
etf.disc.mover <- function(sort_type = "gainers", export = FALSE) {
  o <- do.call(what=py$openbb$etf$disc$mover, args=as.list(rlang::call_match())[-1])
  o
}


#'
#' @description Wrapper for Python function fixedincome.about from OpenBB Terminal SDK
#'
#' @export
#* @get /fixedincome.about
fixedincome.about <- function() {
  o <- do.call(what=py$openbb$fixedincome$about, args=as.list(rlang::call_match())[-1])
  o
}


#' Obtain data for American Interbank Offered Rate (AMERIBOR)
#'
#' @description Wrapper for Python function fixedincome.ameribor from OpenBB Terminal SDK
#'
#' @param parameter (character length 1) The parameter to get data for. Choose from:
#'         "overnight": "AMERIBOR",
#'         "term_30": "AMBOR30T",
#'         "term_90": "AMBOR90T",
#'         "1_week_term_structure": "AMBOR1W",
#'         "1_month_term_structure": "AMBOR1M",
#'         "3_month_term_structure": "AMBOR3M",
#'         "6_month_term_structure": "AMBOR6M",
#'         "1_year_term_structure": "AMBOR1Y",
#'         "2_year_term_structure": "AMBOR2Y",
#'         "30_day_ma": "AMBOR30",
#'         "90_day_ma": "AMBOR90",
#' @export
#* @get /fixedincome.ameribor
fixedincome.ameribor <- function(parameter = "overnight", start_date, end_date) {
  o <- do.call(what=py$openbb$fixedincome$ameribor, args=as.list(rlang::call_match())[-1])
  o
}


#' Obtain Commercial Paper data
#'
#' @description Wrapper for Python function fixedincome.cp from OpenBB Terminal SDK
#'
#' @param maturity (character length 1) The maturity you want to see, either "overnight", "7d", "15d", "30d", "60d" or "90d"
#' @param category (character length 1) The category you want to see, either "asset_backed", "financial" or "non_financial"
#' @param grade (character length 1) The type of grade you want to see, either "a2_p2" or "aa"
#' @export
#* @get /fixedincome.cp
fixedincome.cp <- function(maturity = "30d", category = "financial", grade = "aa", start_date, end_date) {
  o <- do.call(what=py$openbb$fixedincome$cp, args=as.list(rlang::call_match())[-1])
  o
}


#' Obtain data for the Discount Window Primary Credit Rate.
#'
#' @description Wrapper for Python function fixedincome.dwpcr from OpenBB Terminal SDK
#'
#' @param parameter (character length 1) The parameter to get data for. Choose from:
#'         "daily_excl_weekend"
#'         "monthly"
#'         "weekly"
#'         "daily"
#'         "annual"
#' @export
#* @get /fixedincome.dwpcr
fixedincome.dwpcr <- function(parameter = "daily_excl_weekend", start_date, end_date) {
  o <- do.call(what=py$openbb$fixedincome$dwpcr, args=as.list(rlang::call_match())[-1])
  o
}


#' Obtain data for ECB interest rates.
#'
#' @description Wrapper for Python function fixedincome.ecb from OpenBB Terminal SDK
#'
#' @export
#* @get /fixedincome.ecb
fixedincome.ecb <- function(interest_type, start_date, end_date) {
  o <- do.call(what=py$openbb$fixedincome$ecb, args=as.list(rlang::call_match())[-1])
  o
}


#' Gets euro area yield curve data from ECB.
#'
#' @description Wrapper for Python function fixedincome.ecbycrv from OpenBB Terminal SDK
#'
#' @param date (character length 1) Date to get curve for. If empty, gets most recent date (format yyyy-mm-dd)
#' @param yield_type (character length 1) What type of yield curve to get, options: ['spot_rate', 'instantaneous_forward', 'par_yield']
#' @param return_date (logical length 1) If True, returns date of yield curve
#' @param detailed (logical length 1) If True, returns detailed data. Note that this is very slow.
#' @export
#* @get /fixedincome.ecbycrv
fixedincome.ecbycrv <- function(date = "", yield_type = "spot_rate", return_date = FALSE, detailed = FALSE, any_rating = TRUE) {
  o <- do.call(what=py$openbb$fixedincome$ecbycrv, args=as.list(rlang::call_match())[-1])
  o
}


#' Obtain data for Euro Short-Term Rate (ESTR)
#'
#' @description Wrapper for Python function fixedincome.estr from OpenBB Terminal SDK
#'
#' @param parameter (character length 1) The parameter to get data for.
#' @export
#* @get /fixedincome.estr
fixedincome.estr <- function(parameter = "volume_weighted_trimmed_mean_rate", start_date, end_date) {
  o <- do.call(what=py$openbb$fixedincome$estr, args=as.list(rlang::call_match())[-1])
  o
}


#' Obtain data for Effective Federal Funds Rate.
#'
#' @description Wrapper for Python function fixedincome.fed from OpenBB Terminal SDK
#'
#' @param parameter (character length 1) The parameter to get data for. Choose from:
#'         "monthly"
#'         "daily"
#'         "weekly"
#'         "daily_excl_weekend"
#'         "annual"
#'         "biweekly"
#'         "volume"
#' @param overnight (logical length 1) Whether you want to plot the Overnight Banking Federal Rate
#' @param quantiles (logical length 1) Whether you want to see the 1, 25, 75 and 99 percentiles
#' @param target (logical length 1) Whether you want to see the high and low target range
#' @export
#* @get /fixedincome.fed
fixedincome.fed <- function(parameter = "monthly", start_date, end_date, overnight = FALSE, quantiles = FALSE, target = FALSE) {
  o <- do.call(what=py$openbb$fixedincome$fed, args=as.list(rlang::call_match())[-1])
  o
}


#' Get data for Selected Treasury Constant Maturity Minus Federal Funds Rate
#'
#' @description Wrapper for Python function fixedincome.ffrmc from OpenBB Terminal SDK
#'
#' @param parameter (character length 1) FRED ID of FFRMC data to plot
#' @export
#* @get /fixedincome.ffrmc
fixedincome.ffrmc <- function(parameter = "10_year", start_date, end_date) {
  o <- do.call(what=py$openbb$fixedincome$ffrmc, args=as.list(rlang::call_match())[-1])
  o
}


#' The HQM yield curve represents the high quality corporate bond market, i.e.,
#'
#' @description Wrapper for Python function fixedincome.hqm from OpenBB Terminal SDK
#'
#' @param par (logical length 1) Whether you wish to plot the par yield curve as well
#' @export
#* @get /fixedincome.hqm
fixedincome.hqm <- function(date, par = FALSE) {
  o <- do.call(what=py$openbb$fixedincome$hqm, args=as.list(rlang::call_match())[-1])
  o
}


#' Get data for ICE BofA US Corporate Bond Indices.
#'
#' @description Wrapper for Python function fixedincome.icebofa from OpenBB Terminal SDK
#'
#' @param data_type (character length 1) The type of data you want to see, either "yield", "yield_to_worst", "total_return", or "spread"
#' @param category (character length 1) The type of category you want to see, either "all", "duration", "eur" or "usd".
#' @param area (character length 1) The type of area you want to see, either "asia", "emea", "eu", "ex_g10", "latin_america" or "us"
#' @param grade (character length 1) The type of grade you want to see, either "a", "aa", "aaa", "b", "bb", "bbb", "ccc", "crossover",
#'     "high_grade", "high_yield", "non_financial", "non_sovereign", "private_sector", "public_sector"
#' @param options (logical length 1) Set to True to obtain the available options.
#' @export
#* @get /fixedincome.icebofa
fixedincome.icebofa <- function(data_type = "yield", category = "all", area = "us", grade = "non_sovereign", options = FALSE, start_date, end_date) {
  o <- do.call(what=py$openbb$fixedincome$icebofa, args=as.list(rlang::call_match())[-1])
  o
}


#' Get data for ICE BofA US Corporate Bond Spreads
#'
#' @description Wrapper for Python function fixedincome.icespread from OpenBB Terminal SDK
#'
#' @param category (character length 1) The type of category you want to see, either "all", "duration", "eur" or "usd".
#' @param area (character length 1) The type of area you want to see, either "asia", "emea", "eu", "ex_g10", "latin_america" or "us"
#' @param grade (character length 1) The type of grade you want to see, either "a", "aa", "aaa", "b", "bb", "bbb", "ccc", "crossover",
#'     "high_grade", "high_yield", "non_financial", "non_sovereign", "private_sector", "public_sector"
#' @export
#* @get /fixedincome.icespread
fixedincome.icespread <- function(category = "all", area = "us", grade = "non_sovereign", options = FALSE, start_date, end_date) {
  o <- do.call(what=py$openbb$fixedincome$icespread, args=as.list(rlang::call_match())[-1])
  o
}


#' Obtain data for Interest Rate on Reserve Balances.
#'
#' @description Wrapper for Python function fixedincome.iorb from OpenBB Terminal SDK
#'
#' @export
#* @get /fixedincome.iorb
fixedincome.iorb <- function(start_date, end_date) {
  o <- do.call(what=py$openbb$fixedincome$iorb, args=as.list(rlang::call_match())[-1])
  o
}


#' Get data for Moody Corporate Bond Index
#'
#' @description Wrapper for Python function fixedincome.moody from OpenBB Terminal SDK
#'
#' @param data_type (character length 1) The type of data you want to see, either "aaa" or "baa"
#' @export
#* @get /fixedincome.moody
fixedincome.moody <- function(data_type = "aaa", spread, start_date, end_date) {
  o <- do.call(what=py$openbb$fixedincome$moody, args=as.list(rlang::call_match())[-1])
  o
}


#' Obtain data for the Federal Reserve's projection of the federal funds rate.
#'
#' @description Wrapper for Python function fixedincome.projection from OpenBB Terminal SDK
#'
#' @param long_run (logical length 1) Whether to obtain data for the long run projection.
#' @export
#* @get /fixedincome.projection
fixedincome.projection <- function(long_run = FALSE) {
  o <- do.call(what=py$openbb$fixedincome$projection, args=as.list(rlang::call_match())[-1])
  o
}


#' Obtain data for Secured Overnight Financing Rate (SOFR)
#'
#' @description Wrapper for Python function fixedincome.sofr from OpenBB Terminal SDK
#'
#' @param parameter (character length 1) The parameter to get data for. Choose from:
#'         "overnight"
#'         "30_day_average"
#'         "90_day_average"
#'         "180_day_average"
#'         "index"
#' @export
#* @get /fixedincome.sofr
fixedincome.sofr <- function(parameter = "overnight", start_date, end_date) {
  o <- do.call(what=py$openbb$fixedincome$sofr, args=as.list(rlang::call_match())[-1])
  o
}


#' Obtain data for Sterling Overnight Index Average (SONIA)
#'
#' @description Wrapper for Python function fixedincome.sonia from OpenBB Terminal SDK
#'
#' @param parameter (character length 1) The parameter to get data for.
#' @export
#* @get /fixedincome.sonia
fixedincome.sonia <- function(parameter = "rate", start_date, end_date) {
  o <- do.call(what=py$openbb$fixedincome$sonia, args=as.list(rlang::call_match())[-1])
  o
}


#' The spot rate for any maturity is the yield on a bond that provides
#'
#' @description Wrapper for Python function fixedincome.spot from OpenBB Terminal SDK
#'
#' @export
#* @get /fixedincome.spot
fixedincome.spot <- function(maturity, category, start_date, end_date) {
  o <- do.call(what=py$openbb$fixedincome$spot, args=as.list(rlang::call_match())[-1])
  o
}


#' Get data for Selected Treasury Bill Minus Federal Funds Rate.
#'
#' @description Wrapper for Python function fixedincome.tbffr from OpenBB Terminal SDK
#'
#' @param parameter (character length 1) FRED ID of TBFFR data to plot, options: ['3_month', '6_month']
#' @export
#* @get /fixedincome.tbffr
fixedincome.tbffr <- function(parameter = "3_month", start_date, end_date) {
  o <- do.call(what=py$openbb$fixedincome$tbffr, args=as.list(rlang::call_match())[-1])
  o
}


#' Get data for 10-Year Treasury Constant Maturity Minus Selected Treasury Constant Maturity.
#'
#' @description Wrapper for Python function fixedincome.tmc from OpenBB Terminal SDK
#'
#' @param parameter (character length 1) FRED ID of TMC data to plot, options: ['T10Y3M', 'T10Y3M']
#' @export
#* @get /fixedincome.tmc
fixedincome.tmc <- function(parameter = "3_month", start_date, end_date) {
  o <- do.call(what=py$openbb$fixedincome$tmc, args=as.list(rlang::call_match())[-1])
  o
}


#' Gets interest rates data from selected countries (3 month and 10 year)
#'
#' @description Wrapper for Python function fixedincome.treasury from OpenBB Terminal SDK
#'
#' @param forecast (logical length 1) If True, plot forecasts for short term interest rates
#' @export
#* @get /fixedincome.treasury
fixedincome.treasury <- function(short_term, long_term, forecast = FALSE, start_date, end_date) {
  o <- do.call(what=py$openbb$fixedincome$treasury, args=as.list(rlang::call_match())[-1])
  o
}


#' Plot various treasury rates from the United States
#'
#' @description Wrapper for Python function fixedincome.usrates from OpenBB Terminal SDK
#'
#' @param parameter (character length 1) Either "tbills", "cmn", or "tips".
#' @param maturity (character length 1) Depending on the chosen parameter, a set of maturities is available.
#'         "4_week": {"tbill": "DTB4WK"},
#'         "1_month": {"cmn": "DGS1MO"},
#'         "3_month": {"tbill": "TB3MS", "cmn": "DGS3MO"},
#'         "6_month": {"tbill": "DTB6", "cmn": "DGS6MO"},
#'         "1_year": {"tbill": "DTB1YR", "cmn": "DGS1"},
#'         "2_year": {"cmn": "DGS2"},
#'         "3_year": {"cmn": "DGS3"},
#'         "5_year": {"tips": "DFII5", "cmn": "DGS5"},
#'         "7_year": {"tips": "DFII7", "cmn": "DGS7"},
#'         "10_year": {"tips": "DFII10", "cmn": "DGS10"},
#'         "20_year": {"tips": "DFII20", "cmn": "DGS20"},
#'         "30_year": {"tips": "DFII30", "cmn": "DGS30"},
#' @export
#* @get /fixedincome.usrates
fixedincome.usrates <- function(parameter = "tbills", maturity = "3_months", start_date, end_date) {
  o <- do.call(what=py$openbb$fixedincome$usrates, args=as.list(rlang::call_match())[-1])
  o
}


#' Gets yield curve data from FRED.
#'
#' @description Wrapper for Python function fixedincome.ycrv from OpenBB Terminal SDK
#'
#' @param date (character length 1) Date to get curve for. If empty, gets most recent date (format yyyy-mm-dd)
#' @param return_date (logical length 1) If True, returns date of yield curve
#' @export
#* @get /fixedincome.ycrv
fixedincome.ycrv <- function(date = "", return_date = FALSE, inflation_adjusted = FALSE, spot_or_par) {
  o <- do.call(what=py$openbb$fixedincome$ycrv, args=as.list(rlang::call_match())[-1])
  o
}


#'
#' @description Wrapper for Python function forecast.about from OpenBB Terminal SDK
#'
#' @export
#* @get /forecast.about
forecast.about <- function() {
  o <- do.call(what=py$openbb$forecast$about, args=as.list(rlang::call_match())[-1])
  o
}


#' Get Quantile Anomaly Detection Data
#'
#' @description Wrapper for Python function forecast.anom from OpenBB Terminal SDK
#'
#' @export
#* @get /forecast.anom
forecast.anom <- function(data, target_column = "close", train_split = 0.6) {
  o <- do.call(what=py$openbb$forecast$anom, args=as.list(rlang::call_match())[-1])
  o
}


#' Display Quantile Anomaly Detection
#'
#' @description Wrapper for Python function forecast.anom_chart from OpenBB Terminal SDK
#'
#' @export
#* @get /forecast.anom_chart
forecast.anom_chart <- function(data, dataset_name, target_column = "close", train_split = 0.6, start_date, end_date, external_axes) {
  o <- do.call(what=py$openbb$forecast$anom_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Calculate the Average True Range of a variable based on a a specific stock ticker.
#'
#' @description Wrapper for Python function forecast.atr from OpenBB Terminal SDK
#'
#' @export
#* @get /forecast.atr
forecast.atr <- function(dataset, close_column = "close", high_column = "high", low_column = "low") {
  o <- do.call(what=py$openbb$forecast$atr, args=as.list(rlang::call_match())[-1])
  o
}


#' Performs Automatic ARIMA forecasting
#'
#' @description Wrapper for Python function forecast.autoarima from OpenBB Terminal SDK
#'
#' @param target_column (character length 1) Target column to forecast. Defaults to "close".
#' @param seasonal_periods (integer length 1) Number of seasonal periods in a year (7 for daily data)
#'     If not set, inferred from frequency of the series.
#' @param n_predict (integer length 1) Number of days to forecast
#' @param start_window (numeric length 1) Size of sliding window from start of timeseries and onwards
#' @param forecast_horizon (integer length 1) Number of days to forecast when backtesting and retraining historical
#' @examples
#' forecast.autoarima(target_column='close', seasonal_periods=7, n_predict=5, start_window=0.85, forecast_horizon=5)
#' @export
#* @get /forecast.autoarima
forecast.autoarima <- function(data, target_column = "close", seasonal_periods = 7, n_predict = 5, start_window = 0.85, forecast_horizon = 5) {
  o <- do.call(what=py$openbb$forecast$autoarima, args=as.list(rlang::call_match())[-1])
  o
}


#' Display Automatic ARIMA model.
#'
#' @description Wrapper for Python function forecast.autoarima_chart from OpenBB Terminal SDK
#'
#' @param target_column (character length 1) Target column to forecast. Defaults to "close".
#' @param dataset_name (character length 1) The name of the ticker to be predicted
#' @param seasonal_periods (integer length 1) Number of seasonal periods in a year
#'     If not set, inferred from frequency of the series.
#' @param n_predict (integer length 1) Number of days to forecast
#' @param start_window (numeric length 1) Size of sliding window from start of timeseries and onwards
#' @param forecast_horizon (integer length 1) Number of days to forecast when backtesting and retraining historical
#' @param export (character length 1) Format to export data
#' @param residuals (logical length 1) Whether to show residuals for the model. Defaults to False.
#' @param forecast_only (logical length 1) Whether to only show dates in the forecasting range. Defaults to False.
#' @param naive (logical length 1) Whether to show the naive baseline. This just assumes the closing price will be the same
#'     as the previous day's closing price. Defaults to False.
#' @examples
#' forecast.autoarima_chart(target_column='close', seasonal_periods=7, n_predict=5, start_window=0.85, forecast_horizon=5, residuals=FALSE, forecast_only=FALSE, naive=FALSE)
#' @export
#* @get /forecast.autoarima_chart
forecast.autoarima_chart <- function(data, target_column = "close", dataset_name = "", seasonal_periods = 7, n_predict = 5, start_window = 0.85, forecast_horizon = 5, export = "", sheet_name, residuals = FALSE, forecast_only = FALSE, start_date, end_date, naive = FALSE, export_pred_raw = FALSE, external_axes) {
  o <- do.call(what=py$openbb$forecast$autoarima_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Performs Automatic Complex Exponential Smoothing forecasting
#'
#' @description Wrapper for Python function forecast.autoces from OpenBB Terminal SDK
#'
#' @param target_column (character length 1) Target column to forecast. Defaults to "close".
#' @param seasonal_periods (integer length 1) Number of seasonal periods in a year (7 for daily data)
#'     If not set, inferred from frequency of the series.
#' @param n_predict (integer length 1) Number of days to forecast
#' @param start_window (numeric length 1) Size of sliding window from start of timeseries and onwards
#' @param forecast_horizon (integer length 1) Number of days to forecast when backtesting and retraining historical
#' @examples
#' forecast.autoces(target_column='close', seasonal_periods=7, n_predict=5, start_window=0.85, forecast_horizon=5)
#' @export
#* @get /forecast.autoces
forecast.autoces <- function(data, target_column = "close", seasonal_periods = 7, n_predict = 5, start_window = 0.85, forecast_horizon = 5) {
  o <- do.call(what=py$openbb$forecast$autoces, args=as.list(rlang::call_match())[-1])
  o
}


#' Display Automatic Complex Exponential Smoothing Model
#'
#' @description Wrapper for Python function forecast.autoces_chart from OpenBB Terminal SDK
#'
#' @param target_column (character length 1) Target column to forecast. Defaults to "close".
#' @param dataset_name (character length 1) The name of the ticker to be predicted
#' @param seasonal_periods (integer length 1) Number of seasonal periods in a year
#'     If not set, inferred from frequency of the series.
#' @param n_predict (integer length 1) Number of days to forecast
#' @param start_window (numeric length 1) Size of sliding window from start of timeseries and onwards
#' @param forecast_horizon (integer length 1) Number of days to forecast when backtesting and retraining historical
#' @param export (character length 1) Format to export data
#' @param residuals (logical length 1) Whether to show residuals for the model. Defaults to False.
#' @param forecast_only (logical length 1) Whether to only show dates in the forecasting range. Defaults to False.
#' @param naive (logical length 1) Whether to show the naive baseline. This just assumes the closing price will be the same
#'     as the previous day's closing price. Defaults to False.
#' @examples
#' forecast.autoces_chart(target_column='close', seasonal_periods=7, n_predict=5, start_window=0.85, forecast_horizon=5, residuals=FALSE, forecast_only=FALSE, naive=FALSE)
#' @export
#* @get /forecast.autoces_chart
forecast.autoces_chart <- function(data, target_column = "close", dataset_name = "", seasonal_periods = 7, n_predict = 5, start_window = 0.85, forecast_horizon = 5, export = "", sheet_name, residuals = FALSE, forecast_only = FALSE, start_date, end_date, naive = FALSE, export_pred_raw = FALSE, external_axes) {
  o <- do.call(what=py$openbb$forecast$autoces_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Performs Automatic ETS forecasting
#'
#' @description Wrapper for Python function forecast.autoets from OpenBB Terminal SDK
#'
#' @param target_column (character length 1) Target column to forecast. Defaults to "close".
#' @param seasonal_periods (integer length 1) Number of seasonal periods in a year (7 for daily data)
#'     If not set, inferred from frequency of the series.
#' @param n_predict (integer length 1) Number of days to forecast
#' @param start_window (numeric length 1) Size of sliding window from start of timeseries and onwards
#' @param forecast_horizon (integer length 1) Number of days to forecast when backtesting and retraining historical
#' @examples
#' forecast.autoets(target_column='close', seasonal_periods=7, n_predict=5, start_window=0.85, forecast_horizon=5)
#' @export
#* @get /forecast.autoets
forecast.autoets <- function(data, target_column = "close", seasonal_periods = 7, n_predict = 5, start_window = 0.85, forecast_horizon = 5) {
  o <- do.call(what=py$openbb$forecast$autoets, args=as.list(rlang::call_match())[-1])
  o
}


#' Display Automatic ETS (Error, Trend, Sesonality) Model
#'
#' @description Wrapper for Python function forecast.autoets_chart from OpenBB Terminal SDK
#'
#' @param target_column (character length 1) Target column to forecast. Defaults to "close".
#' @param dataset_name (character length 1) The name of the ticker to be predicted
#' @param seasonal_periods (integer length 1) Number of seasonal periods in a year
#'     If not set, inferred from frequency of the series.
#' @param n_predict (integer length 1) Number of days to forecast
#' @param start_window (numeric length 1) Size of sliding window from start of timeseries and onwards
#' @param forecast_horizon (integer length 1) Number of days to forecast when backtesting and retraining historical
#' @param export (character length 1) Format to export data
#' @param residuals (logical length 1) Whether to show residuals for the model. Defaults to False.
#' @param forecast_only (logical length 1) Whether to only show dates in the forecasting range. Defaults to False.
#' @param naive (logical length 1) Whether to show the naive baseline. This just assumes the closing price will be the same
#'     as the previous day's closing price. Defaults to False.
#' @examples
#' forecast.autoets_chart(target_column='close', seasonal_periods=7, n_predict=5, start_window=0.85, forecast_horizon=5, residuals=FALSE, forecast_only=FALSE, naive=FALSE)
#' @export
#* @get /forecast.autoets_chart
forecast.autoets_chart <- function(data, target_column = "close", dataset_name = "", seasonal_periods = 7, n_predict = 5, start_window = 0.85, forecast_horizon = 5, export = "", sheet_name, residuals = FALSE, forecast_only = FALSE, start_date, end_date, naive = FALSE, export_pred_raw = FALSE, external_axes) {
  o <- do.call(what=py$openbb$forecast$autoets_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Performs Automatic Statistical forecasting
#'
#' @description Wrapper for Python function forecast.autoselect from OpenBB Terminal SDK
#'
#' @param target_column (character length 1) Target column to forecast. Defaults to "close".
#' @param seasonal_periods (integer length 1) Number of seasonal periods in a year (7 for daily data)
#'     If not set, inferred from frequency of the series.
#' @param n_predict (integer length 1) Number of days to forecast
#' @param start_window (numeric length 1) Size of sliding window from start of timeseries and onwards
#' @param forecast_horizon (integer length 1) Number of days to forecast when backtesting and retraining historical
#' @examples
#' forecast.autoselect(target_column='close', seasonal_periods=7, n_predict=5, start_window=0.85, forecast_horizon=5)
#' @export
#* @get /forecast.autoselect
forecast.autoselect <- function(data, target_column = "close", seasonal_periods = 7, n_predict = 5, start_window = 0.85, forecast_horizon = 5) {
  o <- do.call(what=py$openbb$forecast$autoselect, args=as.list(rlang::call_match())[-1])
  o
}


#' Display Automatic Statistical Forecasting Model
#'
#' @description Wrapper for Python function forecast.autoselect_chart from OpenBB Terminal SDK
#'
#' @param target_column (character length 1) Target column to forecast. Defaults to "close".
#' @param dataset_name (character length 1) The name of the ticker to be predicted
#' @param seasonal_periods (integer length 1) Number of seasonal periods in a year
#'     If not set, inferred from frequency of the series.
#' @param n_predict (integer length 1) Number of days to forecast
#' @param start_window (numeric length 1) Size of sliding window from start of timeseries and onwards
#' @param forecast_horizon (integer length 1) Number of days to forecast when backtesting and retraining historical
#' @param export (character length 1) Format to export data
#' @param residuals (logical length 1) Whether to show residuals for the model. Defaults to False.
#' @param forecast_only (logical length 1) Whether to only show dates in the forecasting range. Defaults to False.
#' @param naive (logical length 1) Whether to show the naive baseline. This just assumes the closing price will be the same
#'     as the previous day's closing price. Defaults to False.
#' @examples
#' forecast.autoselect_chart(target_column='close', seasonal_periods=7, n_predict=5, start_window=0.85, forecast_horizon=5, residuals=FALSE, forecast_only=FALSE, naive=FALSE)
#' @export
#* @get /forecast.autoselect_chart
forecast.autoselect_chart <- function(data, target_column = "close", dataset_name = "", seasonal_periods = 7, n_predict = 5, start_window = 0.85, forecast_horizon = 5, export = "", sheet_name, residuals = FALSE, forecast_only = FALSE, start_date, end_date, naive = FALSE, export_pred_raw = FALSE, external_axes) {
  o <- do.call(what=py$openbb$forecast$autoselect_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Performs Block RNN forecasting
#'
#' @description Wrapper for Python function forecast.brnn from OpenBB Terminal SDK
#'
#' @param target_column (character length 1) Target column to forecast. Defaults to "close".
#' @param n_predict (integer length 1) Days to predict. Defaults to 5.
#' @param train_split (numeric length 1) Train/val split. Defaults to 0.85.
#' @param forecast_horizon (integer length 1) Forecast horizon when performing historical forecasting. Defaults to 5.
#' @param input_chunk_length (integer length 1) Number of past time steps that are fed to the forecasting module at prediction time. Defaults to 14.
#' @param output_chunk_length (integer length 1) The length of the forecast of the model. Defaults to 5.
#' @param model_type (character length 1) Either a string specifying the RNN module type ("RNN", "LSTM" or "GRU"). Defaults to "LSTM".
#' @param n_rnn_layers (integer length 1) Number of layers in the RNN module. Defaults to 1.
#' @param dropout (numeric length 1) Fraction of neurons affected by Dropout. Defaults to 0.0.
#' @param batch_size (integer length 1) Number of time series (input and output sequences) used in each training pass. Defaults to 32.
#' @param n_epochs (integer length 1) Number of epochs over which to train the model. Defaults to 100.
#' @param learning_rate (numeric length 1) Defaults to 1e-3.
#' @param model_save_name (character length 1) Name for model. Defaults to "brnn_model".
#' @param force_reset (logical length 1) If set to True, any previously-existing model with the same name will be reset (all checkpoints will be
#'     discarded). Defaults to True.
#' @param save_checkpoints (logical length 1) Whether or not to automatically save the untrained model and checkpoints from training. Defaults to True.
#' @param metric (character length 1) Metric to use for model selection. Defaults to "mape".
#' @examples
#' forecast.brnn(target_column='close', n_predict=5, train_split=0.85, forecast_horizon=5, input_chunk_length=14, output_chunk_length=5, model_type='LSTM', n_rnn_layers=1, dropout=0, batch_size=32, n_epochs=100, learning_rate=0.001, model_save_name='brnn_model', force_reset=TRUE, save_checkpoints=TRUE)
#' @export
#* @get /forecast.brnn
forecast.brnn <- function(data, target_column = "close", n_predict = 5, train_split = 0.85, past_covariates, forecast_horizon = 5, input_chunk_length = 14, output_chunk_length = 5, model_type = "LSTM", n_rnn_layers = 1, dropout = 0.0, batch_size = 32, n_epochs = 100, learning_rate = 0.001, model_save_name = "brnn_model", force_reset = TRUE, save_checkpoints = TRUE, metric = "mape") {
  o <- do.call(what=py$openbb$forecast$brnn, args=as.list(rlang::call_match())[-1])
  o
}


#' Display BRNN forecast
#'
#' @description Wrapper for Python function forecast.brnn_chart from OpenBB Terminal SDK
#'
#' @param target_column (character length 1) Target column to forecast. Defaults to "close".
#' @param dataset_name (character length 1) The name of the ticker to be predicted
#' @param n_predict (integer length 1) Days to predict. Defaults to 5.
#' @param train_split (numeric length 1) Train/val split. Defaults to 0.85.
#' @param forecast_horizon (integer length 1) Forecast horizon when performing historical forecasting. Defaults to 5.
#' @param input_chunk_length (integer length 1) Number of past time steps that are fed to the forecasting module at prediction time. Defaults to 14.
#' @param output_chunk_length (integer length 1) The length of the forecast of the model. Defaults to 5.
#' @param model_type (character length 1) Either a string specifying the RNN module type ("RNN", "LSTM" or "GRU"). Defaults to "LSTM".
#' @param n_rnn_layers (integer length 1) Number of layers in the RNN module. Defaults to 1.
#' @param dropout (numeric length 1) Fraction of neurons affected by Dropout. Defaults to 0.0.
#' @param batch_size (integer length 1) Number of time series (input and output sequences) used in each training pass. Defaults to 32.
#' @param n_epochs (integer length 1) Number of epochs over which to train the model. Defaults to 101.
#' @param learning_rate (numeric length 1) Defaults to 1e-3.
#' @param model_save_name (character length 1) Name for model. Defaults to "brnn_model".
#' @param force_reset (logical length 1) If set to True, any previously-existing model with the same name will be reset
#'     (all checkpoints will be discarded). Defaults to True.
#' @param save_checkpoints (logical length 1) Whether or not to automatically save the untrained model and checkpoints from training.
#'     Defaults to True.
#' @param export (character length 1) Format to export data
#' @param residuals (logical length 1) Whether to show residuals for the model. Defaults to False.
#' @param forecast_only (logical length 1) Whether to only show dates in the forecasting range. Defaults to False.
#' @param naive (logical length 1) Whether to show the naive baseline. This just assumes the closing price will be the same
#'     as the previous day's closing price. Defaults to False.
#' @param export_pred_raw (logical length 1) Whether to export the raw predicted values. Defaults to False.
#' @param metric (character length 1) The metric to use for the model. Defaults to "mape".
#' @examples
#' forecast.brnn_chart(target_column='close', n_predict=5, train_split=0.85, forecast_horizon=5, input_chunk_length=14, output_chunk_length=5, model_type='LSTM', n_rnn_layers=1, dropout=0, batch_size=16, n_epochs=100, learning_rate=0.001, model_save_name='rnn_model', force_reset=TRUE, save_checkpoints=TRUE, residuals=FALSE, forecast_only=FALSE, naive=FALSE)
#' @export
#* @get /forecast.brnn_chart
forecast.brnn_chart <- function(data, target_column = "close", dataset_name = "", n_predict = 5, past_covariates, train_split = 0.85, forecast_horizon = 5, input_chunk_length = 14, output_chunk_length = 5, model_type = "LSTM", n_rnn_layers = 1, dropout = 0.0, batch_size = 32, n_epochs = 100, learning_rate = 0.001, model_save_name = "brnn_model", force_reset = TRUE, save_checkpoints = TRUE, export = "", sheet_name, residuals = FALSE, forecast_only = FALSE, start_date, end_date, naive = FALSE, export_pred_raw = FALSE, metric = "mape", external_axes) {
  o <- do.call(what=py$openbb$forecast$brnn_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Clean up NaNs from the dataset
#'
#' @description Wrapper for Python function forecast.clean from OpenBB Terminal SDK
#'
#' @param dataset (data.frame) The dataset you wish to clean
#' @export
#* @get /forecast.clean
forecast.clean <- function(dataset, fill, drop, limit) {
  o <- do.call(what=py$openbb$forecast$clean, args=as.list(rlang::call_match())[-1])
  o
}


#' Adds the given column of df2 to df1
#'
#' @description Wrapper for Python function forecast.combine from OpenBB Terminal SDK
#'
#' @param df1 (data.frame) The dataframe to add a column to
#' @param df2 (data.frame) The dataframe to lose a column
#' @param column (character length 1) The column to transfer
#' @param dataset (character length 1) A name for df2 (shows in name of new column)
#' @export
#* @get /forecast.combine
forecast.combine <- function(df1, df2, column, dataset = "") {
  o <- do.call(what=py$openbb$forecast$combine, args=as.list(rlang::call_match())[-1])
  o
}


#' Returns correlation for a given df
#'
#' @description Wrapper for Python function forecast.corr from OpenBB Terminal SDK
#'
#' @param data (data.frame) The df to produce statistics for
#' @export
#* @get /forecast.corr
forecast.corr <- function(data) {
  o <- do.call(what=py$openbb$forecast$corr, args=as.list(rlang::call_match())[-1])
  o
}


#' Plot correlation coefficients for dataset features
#'
#' @description Wrapper for Python function forecast.corr_chart from OpenBB Terminal SDK
#'
#' @param dataset (data.frame) The dataset fore calculating correlation coefficients
#' @param export (character length 1) Format to export image
#' @export
#* @get /forecast.corr_chart
forecast.corr_chart <- function(dataset, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$forecast$corr_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Delete a column from a dataframe
#'
#' @description Wrapper for Python function forecast.delete from OpenBB Terminal SDK
#'
#' @param data (data.frame) The dataframe to delete a column from
#' @param column (character length 1) The column to delete
#' @export
#* @get /forecast.delete
forecast.delete <- function(data, column) {
  o <- do.call(what=py$openbb$forecast$delete, args=as.list(rlang::call_match())[-1])
  o
}


#' Calculate the %change of a variable based on a specific column
#'
#' @description Wrapper for Python function forecast.delta from OpenBB Terminal SDK
#'
#' @export
#* @get /forecast.delta
forecast.delta <- function(dataset, target_column = "close") {
  o <- do.call(what=py$openbb$forecast$delta, args=as.list(rlang::call_match())[-1])
  o
}


#' Returns statistics for a given df
#'
#' @description Wrapper for Python function forecast.desc from OpenBB Terminal SDK
#'
#' @param data (data.frame) The df to produce statistics for
#' @export
#* @get /forecast.desc
forecast.desc <- function(data) {
  o <- do.call(what=py$openbb$forecast$desc, args=as.list(rlang::call_match())[-1])
  o
}


#' Show descriptive statistics for a dataframe
#'
#' @description Wrapper for Python function forecast.desc_chart from OpenBB Terminal SDK
#'
#' @param data (data.frame) The dataframe to show
#' @param name (character length 1) The name of the dataframe
#' @param export (character length 1) Format to export data
#' @export
#* @get /forecast.desc_chart
forecast.desc_chart <- function(data, name = "", export = "", sheet_name) {
  o <- do.call(what=py$openbb$forecast$desc_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' A moving average provides an indication of the trend of the price movement
#'
#' @description Wrapper for Python function forecast.ema from OpenBB Terminal SDK
#'
#' @param dataset (data.frame) The dataset you wish to clean
#' @param target_column (character length 1) The column you wish to add the EMA to
#' @param period (integer length 1) Time Span
#' @examples
#' forecast.ema(target_column='close', period=10)
#' @export
#* @get /forecast.ema
forecast.ema <- function(dataset, target_column = "close", period = 10) {
  o <- do.call(what=py$openbb$forecast$ema, args=as.list(rlang::call_match())[-1])
  o
}


#' Performs Probabilistic Exponential Smoothing forecasting
#'
#' @description Wrapper for Python function forecast.expo from OpenBB Terminal SDK
#'
#' @param target_column (character length 1) Target column to forecast. Defaults to "close".
#' @param trend (character length 1) Trend component.  One of [N, A, M]
#'     Defaults to ADDITIVE.
#' @param seasonal (character length 1) Seasonal component.  One of [N, A, M]
#'     Defaults to ADDITIVE.
#' @param seasonal_periods (integer length 1) Number of seasonal periods in a year (7 for daily data)
#'     If not set, inferred from frequency of the series.
#' @param dampen (character length 1) Dampen the function
#' @param n_predict (integer length 1) Number of days to forecast
#' @param start_window (numeric length 1) Size of sliding window from start of timeseries and onwards
#' @param forecast_horizon (integer length 1) Number of days to forecast when backtesting and retraining historical
#' @param metric (character length 1) Metric to use for backtesting. Defaults to MAPE.
#' @examples
#' forecast.expo(target_column='close', trend='A', seasonal='A', seasonal_periods=7, dampen='F', n_predict=5, start_window=0.85, forecast_horizon=5)
#' @export
#* @get /forecast.expo
forecast.expo <- function(data, target_column = "close", trend = "A", seasonal = "A", seasonal_periods = 7, dampen = "F", n_predict = 5, start_window = 0.85, forecast_horizon = 5, metric = "mape") {
  o <- do.call(what=py$openbb$forecast$expo, args=as.list(rlang::call_match())[-1])
  o
}


#' Display Probabilistic Exponential Smoothing forecast
#'
#' @description Wrapper for Python function forecast.expo_chart from OpenBB Terminal SDK
#'
#' @param target_column (character length 1) Target column to forecast. Defaults to "close".
#' @param dataset_name (character length 1) The name of the ticker to be predicted
#' @param trend (character length 1) Trend component.  One of [N, A, M]
#'     Defaults to ADDITIVE.
#' @param seasonal (character length 1) Seasonal component.  One of [N, A, M]
#'     Defaults to ADDITIVE.
#' @param seasonal_periods (integer length 1) Number of seasonal periods in a year
#'     If not set, inferred from frequency of the series.
#' @param dampen (character length 1) Dampen the function
#' @param n_predict (integer length 1) Number of days to forecast
#' @param start_window (numeric length 1) Size of sliding window from start of timeseries and onwards
#' @param forecast_horizon (integer length 1) Number of days to forecast when backtesting and retraining historical
#' @param export (character length 1) Format to export data
#' @param residuals (logical length 1) Whether to show residuals for the model. Defaults to False.
#' @param forecast_only (logical length 1) Whether to only show dates in the forecasting range. Defaults to False.
#' @param naive (logical length 1) Whether to show the naive baseline. This just assumes the closing price will be the same
#'     as the previous day's closing price. Defaults to False.
#' @param export_pred_raw (logical length 1) Whether to export the raw predicted values. Defaults to False.
#' @param metric (character length 1) The metric to use when backtesting. Defaults to "mape".
#' @examples
#' forecast.expo_chart(target_column='close', trend='A', seasonal='A', seasonal_periods=7, dampen='F', n_predict=5, start_window=0.85, forecast_horizon=5, residuals=FALSE, forecast_only=FALSE, naive=FALSE)
#' @export
#* @get /forecast.expo_chart
forecast.expo_chart <- function(data, target_column = "close", dataset_name = "", trend = "A", seasonal = "A", seasonal_periods = 7, dampen = "F", n_predict = 5, start_window = 0.85, forecast_horizon = 5, export = "", sheet_name, residuals = FALSE, forecast_only = FALSE, start_date, end_date, naive = FALSE, export_pred_raw = FALSE, metric = "mape", external_axes) {
  o <- do.call(what=py$openbb$forecast$expo_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Export a dataframe to a file
#'
#' @description Wrapper for Python function forecast.export from OpenBB Terminal SDK
#'
#' @param data (data.frame) The dataframe to export
#' @param export (character length 1) The format to export the dataframe to
#' @param name (character length 1) The name of the dataframe
#' @export
#* @get /forecast.export
forecast.export <- function(data, export, name = "", sheet_name) {
  o <- do.call(what=py$openbb$forecast$export, args=as.list(rlang::call_match())[-1])
  o
}


#' Perform Linear Regression Forecasting
#'
#' @description Wrapper for Python function forecast.linregr from OpenBB Terminal SDK
#'
#' @param target_column (character length 1) Target column to forecast. Defaults to "close".
#' @param n_predict (integer length 1) Days to predict. Defaults to 5.
#' @param train_split (numeric length 1) Train/val split. Defaults to 0.85.
#' @param forecast_horizon (integer length 1) Forecast horizon when performing historical forecasting. Defaults to 5.
#' @param output_chunk_length (integer length 1) The length of the forecast of the model. Defaults to 1.
#' @param metric (character length 1) The metric to use for the model. Defaults to "mape".
#' @examples
#' forecast.linregr(target_column='close', n_predict=5, train_split=0.85, forecast_horizon=5, output_chunk_length=5)
#' @export
#* @get /forecast.linregr
forecast.linregr <- function(data, target_column = "close", n_predict = 5, past_covariates, train_split = 0.85, forecast_horizon = 5, output_chunk_length = 5, lags, random_state, metric = "mape") {
  o <- do.call(what=py$openbb$forecast$linregr, args=as.list(rlang::call_match())[-1])
  o
}


#' Display Linear Regression Forecasting
#'
#' @description Wrapper for Python function forecast.linregr_chart from OpenBB Terminal SDK
#'
#' @param dataset_name (character length 1) The name of the ticker to be predicted
#' @param n_predict (integer length 1) Days to predict. Defaults to 5.
#' @param train_split (numeric length 1) Train/val split. Defaults to 0.85.
#' @param forecast_horizon (integer length 1) Forecast horizon when performing historical forecasting. Defaults to 5.
#' @param output_chunk_length (integer length 1) The length of the forecast of the model. Defaults to 1.
#' @param export (character length 1) Format to export data
#' @param residuals (logical length 1) Whether to show residuals for the model. Defaults to False.
#' @param forecast_only (logical length 1) Whether to only show dates in the forecasting range. Defaults to False.
#' @param naive (logical length 1) Whether to show the naive baseline. This just assumes the closing price will be the
#'     same as the previous day's closing price. Defaults to False.
#' @param explainability_raw (logical length 1) Whether to show the raw explainability data. Defaults to False.
#' @param export_pred_raw (logical length 1) Whether to export the raw prediction data. Defaults to False.
#' @param metric (character length 1) The metric to use for the model. Defaults to "mape".
#' @examples
#' forecast.linregr_chart(n_predict=5, forecast_horizon=5, output_chunk_length=1, residuals=FALSE, forecast_only=FALSE, naive=FALSE)
#' @export
#* @get /forecast.linregr_chart
forecast.linregr_chart <- function(data, target_column = "close", dataset_name = "", n_predict = 5, past_covariates, train_split = 0.85, forecast_horizon = 5, output_chunk_length = 5, lags, export = "", sheet_name, residuals = FALSE, forecast_only = FALSE, start_date, end_date, naive = FALSE, explainability_raw = FALSE, export_pred_raw = FALSE, metric = "mape", external_axes) {
  o <- do.call(what=py$openbb$forecast$linregr_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Load custom file into dataframe.
#'
#' @description Wrapper for Python function forecast.load from OpenBB Terminal SDK
#'
#' @param file (character length 1) Path to file
#' @export
#* @get /forecast.load
forecast.load <- function(file, data_files, data_examples) {
  o <- do.call(what=py$openbb$forecast$load, args=as.list(rlang::call_match())[-1])
  o
}


#' A momentum oscillator, which measures the percentage change between the current
#'
#' @description Wrapper for Python function forecast.mom from OpenBB Terminal SDK
#'
#' @param dataset (data.frame) The dataset you wish to calculate with
#' @param target_column (character length 1) The column you wish to add the MOM to
#' @param period (integer length 1) Time Span
#' @examples
#' forecast.mom(target_column='close', period=10)
#' @export
#* @get /forecast.mom
forecast.mom <- function(dataset, target_column = "close", period = 10) {
  o <- do.call(what=py$openbb$forecast$mom, args=as.list(rlang::call_match())[-1])
  o
}


#' Performs MSTL forecasting
#'
#' @description Wrapper for Python function forecast.mstl from OpenBB Terminal SDK
#'
#' @param target_column (character length 1) Target column to forecast. Defaults to "close".
#' @param seasonal_periods (integer length 1) Number of seasonal periods in a year (7 for daily data)
#'     If not set, inferred from frequency of the series.
#' @param n_predict (integer length 1) Number of days to forecast
#' @param start_window (numeric length 1) Size of sliding window from start of timeseries and onwards
#' @param forecast_horizon (integer length 1) Number of days to forecast when backtesting and retraining historical
#' @examples
#' forecast.mstl(target_column='close', seasonal_periods=7, n_predict=5, start_window=0.85, forecast_horizon=5)
#' @export
#* @get /forecast.mstl
forecast.mstl <- function(data, target_column = "close", seasonal_periods = 7, n_predict = 5, start_window = 0.85, forecast_horizon = 5) {
  o <- do.call(what=py$openbb$forecast$mstl, args=as.list(rlang::call_match())[-1])
  o
}


#' Display MSTL Model
#'
#' @description Wrapper for Python function forecast.mstl_chart from OpenBB Terminal SDK
#'
#' @param target_column (character length 1) Target column to forecast. Defaults to "close".
#' @param dataset_name (character length 1) The name of the ticker to be predicted
#' @param seasonal_periods (integer length 1) Number of seasonal periods in a year
#'     If not set, inferred from frequency of the series.
#' @param n_predict (integer length 1) Number of days to forecast
#' @param start_window (numeric length 1) Size of sliding window from start of timeseries and onwards
#' @param forecast_horizon (integer length 1) Number of days to forecast when backtesting and retraining historical
#' @param export (character length 1) Format to export data
#' @param residuals (logical length 1) Whether to show residuals for the model. Defaults to False.
#' @param forecast_only (logical length 1) Whether to only show dates in the forecasting range. Defaults to False.
#' @param naive (logical length 1) Whether to show the naive baseline. This just assumes the closing price will be the same
#'     as the previous day's closing price. Defaults to False.
#' @examples
#' forecast.mstl_chart(target_column='close', seasonal_periods=7, n_predict=5, start_window=0.85, forecast_horizon=5, residuals=FALSE, forecast_only=FALSE, naive=FALSE)
#' @export
#* @get /forecast.mstl_chart
forecast.mstl_chart <- function(data, target_column = "close", dataset_name = "", seasonal_periods = 7, n_predict = 5, start_window = 0.85, forecast_horizon = 5, export = "", sheet_name, residuals = FALSE, forecast_only = FALSE, start_date, end_date, naive = FALSE, export_pred_raw = FALSE, external_axes) {
  o <- do.call(what=py$openbb$forecast$mstl_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Perform NBEATS Forecasting
#'
#' @description Wrapper for Python function forecast.nbeats from OpenBB Terminal SDK
#'
#' @param target_column (character length 1) Target column to forecast. Defaults to "close".
#' @param n_predict (integer length 1) Days to predict. Defaults to 5.
#' @param train_split (numeric length 1) Train/val split. Defaults to 0.85.
#' @param forecast_horizon (integer length 1) Forecast horizon when performing historical forecasting. Defaults to 5.
#' @param input_chunk_length (integer length 1) Number of past time steps that are fed to the forecasting module at prediction time. Defaults to 14.
#' @param output_chunk_length (integer length 1) The length of the forecast of the model. Defaults to 5.
#' @param num_stacks (integer length 1) The number of stacks that make up the whole model. Defaults to 10.
#' @param num_blocks (integer length 1) The number of blocks making up every stack. Defaults to 3.
#' @param num_layers (integer length 1) The number of fully connected layers preceding the final forking layers in each block
#'     of every stack. Defaults to 4.
#' @param layer_widths (integer length 1) Determines the number of neurons that make up each fully connected layer in each block
#'     of every stack. Defaults to 512.
#' @param batch_size (integer length 1) Number of time series (input and output sequences) used in each training pass. Defaults to 32.
#' @param n_epochs (integer length 1) Number of epochs over which to train the model. Defaults to 100.
#' @param learning_rate (numeric length 1) Defaults to 1e-3.
#' @param model_save_name (character length 1) Name for model. Defaults to "brnn_model".
#' @param force_reset (logical length 1) If set to True, any previously-existing model with the same name will be reset
#'     (all checkpoints will be discarded). Defaults to True.
#' @param save_checkpoints (logical length 1) Whether or not to automatically save the untrained model and checkpoints from training.
#'     Defaults to True.
#' @param metric (character length 1) Metric to use for model selection. Defaults to "mape".
#' @examples
#' forecast.nbeats(target_column='close', n_predict=5, train_split=0.85, forecast_horizon=5, input_chunk_length=14, output_chunk_length=5, num_stacks=10, num_blocks=3, num_layers=4, layer_widths=512, batch_size=800, n_epochs=100, learning_rate=0.001, model_save_name='nbeats_model', force_reset=TRUE, save_checkpoints=TRUE)
#' @export
#* @get /forecast.nbeats
forecast.nbeats <- function(data, target_column = "close", n_predict = 5, past_covariates, train_split = 0.85, forecast_horizon = 5, input_chunk_length = 14, output_chunk_length = 5, num_stacks = 10, num_blocks = 3, num_layers = 4, layer_widths = 512, batch_size = 800, n_epochs = 300, learning_rate = 0.001, model_save_name = "nbeats_model", force_reset = TRUE, save_checkpoints = TRUE, metric = "mape") {
  o <- do.call(what=py$openbb$forecast$nbeats, args=as.list(rlang::call_match())[-1])
  o
}


#' Display NBEATS forecast
#'
#' @description Wrapper for Python function forecast.nbeats_chart from OpenBB Terminal SDK
#'
#' @param target_column (character length 1) Target column to forecast. Defaults to "close".
#' @param dataset_name (character length 1) The name of the ticker to be predicted
#' @param n_predict (integer length 1) Days to predict. Defaults to 5.
#' @param train_split (numeric length 1) Train/val split. Defaults to 0.85.
#' @param forecast_horizon (integer length 1) Forecast horizon when performing historical forecasting. Defaults to 5.
#' @param input_chunk_length (integer length 1) Number of past time steps that are fed to the forecasting module at prediction time. Defaults to 14.
#' @param output_chunk_length (integer length 1) The length of the forecast of the model. Defaults to 5.
#' @param num_stacks (integer length 1) The number of stacks that make up the whole model. Defaults to 10.
#' @param num_blocks (integer length 1) The number of blocks making up every stack. Defaults to 3.
#' @param num_layers (integer length 1) The number of fully connected layers preceding the final forking layers in each block
#'     of every stack. Defaults to 4.
#' @param layer_widths (integer length 1) Determines the number of neurons that make up each fully connected layer in each block
#'     of every stack. Defaults to 512.
#' @param n_epochs (integer length 1) Number of epochs over which to train the model. Defaults to 100.
#' @param learning_rate (numeric length 1) Defaults to 1e-3.
#' @param batch_size (integer length 1) Number of time series (input and output sequences) used in each training pass. Defaults
#'     to 32.
#' @param model_save_name (character length 1) Name for model. Defaults to "brnn_model".
#' @param force_reset (logical length 1) If set to True, any previously-existing model with the same name will be reset (all
#'     checkpoints will be discarded). Defaults to True.
#' @param save_checkpoints (logical length 1) Whether or not to automatically save the untrained model and checkpoints from training.
#'     Defaults to True.
#' @param export (character length 1) Format to export data
#' @param residuals (logical length 1) Whether to show residuals for the model. Defaults to False.
#' @param forecast_only (logical length 1) Whether to only show dates in the forecasting range. Defaults to False.
#' @param naive (logical length 1) Whether to show the naive baseline. This just assumes the closing price will be the same
#'     as the previous day's closing price. Defaults to False.
#' @param export_pred_raw (logical length 1) Whether to export the raw predicted values. Defaults to False.
#' @param metric (character length 1) Metric to use for evaluation. Defaults to "mape".
#' @examples
#' forecast.nbeats_chart(target_column='close', n_predict=5, train_split=0.85, forecast_horizon=5, input_chunk_length=14, output_chunk_length=5, num_stacks=10, num_blocks=3, num_layers=4, layer_widths=512, batch_size=800, n_epochs=100, learning_rate=0.001, model_save_name='nbeats_model', force_reset=TRUE, save_checkpoints=TRUE, residuals=FALSE, forecast_only=FALSE, naive=FALSE)
#' @export
#* @get /forecast.nbeats_chart
forecast.nbeats_chart <- function(data, target_column = "close", dataset_name = "", n_predict = 5, past_covariates, train_split = 0.85, forecast_horizon = 5, input_chunk_length = 14, output_chunk_length = 5, num_stacks = 10, num_blocks = 3, num_layers = 4, layer_widths = 512, n_epochs = 300, learning_rate = 0.001, batch_size = 800, model_save_name = "nbeats_model", force_reset = TRUE, save_checkpoints = TRUE, export = "", sheet_name, residuals = FALSE, forecast_only = FALSE, start_date, end_date, naive = FALSE, export_pred_raw = FALSE, metric = "mape", external_axes) {
  o <- do.call(what=py$openbb$forecast$nbeats_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Performs Nhits forecasting
#'
#' @description Wrapper for Python function forecast.nhits from OpenBB Terminal SDK
#'
#' @param target_column (character length 1) Target column to forecast. Defaults to "close".
#' @param n_predict (integer length 1) Days to predict. Defaults to 5.
#' @param train_split (numeric length 1) Train/val split. Defaults to 0.85.
#' @param forecast_horizon (integer length 1) Forecast horizon when performing historical forecasting. Defaults to 5.
#' @param input_chunk_length (integer length 1) Number of past time steps that are fed to the forecasting module at prediction time. Defaults to 14.
#' @param output_chunk_length (integer length 1) The length of the forecast of the model. Defaults to 5.
#' @param num_stacks (integer length 1) The number of stacks that make up the whole model.
#' @param num_blocks (integer length 1) The number of blocks making up every stack.
#' @param num_layers (integer length 1) The number of fully connected layers preceding the final forking layers in each block
#'     of every stack.
#' @param layer_widths (integer length 1) Determines the number of neurons that make up each fully connected layer in each
#'     block of every stack. If a list is passed, it must have a length equal to num_stacks
#'     and every entry in that list corresponds to the layer width of the corresponding stack.
#'     If an integer is passed, every stack will have blocks with FC layers of the same width.
#' @param dropout (numeric length 1) The dropout probability to be used in fully connected layers.
#' @param activation (character length 1) Supported activations: [‘ReLU’,’RReLU’, ‘PReLU’, ‘Softplus’, ‘Tanh’, ‘SELU’, ‘LeakyReLU’, ‘Sigmoid’]
#' @param max_pool_1d (logical length 1) Use max_pool_1d pooling. False uses AvgPool1d.
#' @param batch_size (integer length 1) Number of time series (input and output sequences) used in each training pass. Defaults to 32.
#' @param n_epochs (integer length 1) Number of epochs over which to train the model. Defaults to 100.
#' @param learning_rate (numeric length 1) Defaults to 1e-3.
#' @param model_save_name (character length 1) Name for model. Defaults to "brnn_model".
#' @param force_reset (logical length 1) If set to True, any previously-existing model with the same name will be reset (all checkpoints will be
#'     discarded). Defaults to True.
#' @param save_checkpoints (logical length 1) Whether or not to automatically save the untrained model and checkpoints from training. Defaults to True.
#' @param metric (character length 1) Metric to use for model selection. Defaults to "mape".
#' @examples
#' forecast.nhits(target_column='close', n_predict=5, train_split=0.85, forecast_horizon=5, input_chunk_length=14, output_chunk_length=5, num_stacks=3, num_blocks=1, num_layers=2, layer_widths=512, dropout=0.1, activation='ReLU', max_pool_1d=TRUE, batch_size=32, n_epochs=100, learning_rate=0.001, model_save_name='brnn_model', force_reset=TRUE, save_checkpoints=TRUE)
#' @export
#* @get /forecast.nhits
forecast.nhits <- function(data, target_column = "close", n_predict = 5, train_split = 0.85, past_covariates, forecast_horizon = 5, input_chunk_length = 14, output_chunk_length = 5, num_stacks = 3, num_blocks = 1, num_layers = 2, layer_widths = 512, pooling_kernel_sizes, n_freq_downsample, dropout = 0.1, activation = "ReLU", max_pool_1d = TRUE, batch_size = 32, n_epochs = 100, learning_rate = 0.001, model_save_name = "nhits_model", force_reset = TRUE, save_checkpoints = TRUE, metric = "mape") {
  o <- do.call(what=py$openbb$forecast$nhits, args=as.list(rlang::call_match())[-1])
  o
}


#' Display Nhits forecast
#'
#' @description Wrapper for Python function forecast.nhits_chart from OpenBB Terminal SDK
#'
#' @param target_column (character length 1) Target column to forecast. Defaults to "close".
#' @param dataset_name (character length 1) The name of the ticker to be predicted
#' @param n_predict (integer length 1) Days to predict. Defaults to 5.
#' @param train_split (numeric length 1) Train/val split. Defaults to 0.85.
#' @param forecast_horizon (integer length 1) Forecast horizon when performing historical forecasting. Defaults to 5.
#' @param input_chunk_length (integer length 1) Number of past time steps that are fed to the forecasting module at prediction time. Defaults to 14.
#' @param output_chunk_length (integer length 1) The length of the forecast of the model. Defaults to 5.
#' @param num_stacks (integer length 1) The number of stacks that make up the whole model.
#' @param num_blocks (integer length 1) The number of blocks making up every stack.
#' @param num_layers (integer length 1) The number of fully connected layers preceding the final forking layers in each block
#'     of every stack.
#' @param layer_widths (integer length 1) Determines the number of neurons that make up each fully connected layer in each
#'     block of every stack. If a list is passed, it must have a length equal to num_stacks
#'     and every entry in that list corresponds to the layer width of the corresponding stack.
#'     If an integer is passed, every stack will have blocks with FC layers of the same width.
#' @param dropout (numeric length 1) The dropout probability to be used in fully connected layers.
#' @param activation (character length 1) Supported activations: [[‘ReLU’,’RReLU’, ‘PReLU’, ‘Softplus’, ‘Tanh’, ‘SELU’, ‘LeakyReLU’, ‘Sigmoid’]
#' @param max_pool_1d (logical length 1) Use max_pool_1d pooling. False uses AvgPool1d.
#' @param batch_size (integer length 1) Number of time series (input and output sequences) used in each training pass. Defaults to 32.
#' @param n_epochs (integer length 1) Number of epochs over which to train the model. Defaults to 100.
#' @param learning_rate (numeric length 1) Defaults to 1e-3.
#' @param model_save_name (character length 1) Name for model. Defaults to "brnn_model".
#' @param force_reset (logical length 1) If set to True, any previously-existing model with the same name will be reset
#'     (all checkpoints will be discarded). Defaults to True.
#' @param save_checkpoints (logical length 1) Whether or not to automatically save the untrained model and checkpoints from training.
#'     Defaults to True.
#' @param export (character length 1) Format to export data
#' @param residuals (logical length 1) Whether to show residuals for the model. Defaults to False.
#' @param forecast_only (logical length 1) Whether to only show dates in the forecasting range. Defaults to False.
#' @param naive (logical length 1) Whether to show the naive baseline. This just assumes the closing price will be the same
#'     as the previous day's closing price. Defaults to False.
#' @param export_pred_raw (logical length 1) Whether to export the raw predicted values. Defaults to False.
#' @param metric (character length 1) Metric to use for evaluation. Defaults to "mape".
#' @examples
#' forecast.nhits_chart(target_column='close', n_predict=5, train_split=0.85, forecast_horizon=5, input_chunk_length=14, output_chunk_length=5, num_stacks=3, num_blocks=1, num_layers=2, layer_widths=512, dropout=0.1, activation='ReLU', max_pool_1d=TRUE, batch_size=32, n_epochs=100, learning_rate=0.001, model_save_name='rnn_model', force_reset=TRUE, save_checkpoints=TRUE, residuals=FALSE, forecast_only=FALSE, naive=FALSE)
#' @export
#* @get /forecast.nhits_chart
forecast.nhits_chart <- function(data, target_column = "close", dataset_name = "", n_predict = 5, past_covariates, train_split = 0.85, forecast_horizon = 5, input_chunk_length = 14, output_chunk_length = 5, num_stacks = 3, num_blocks = 1, num_layers = 2, layer_widths = 512, pooling_kernel_sizes, n_freq_downsample, dropout = 0.1, activation = "ReLU", max_pool_1d = TRUE, batch_size = 32, n_epochs = 100, learning_rate = 0.001, model_save_name = "nhits_model", force_reset = TRUE, save_checkpoints = TRUE, export = "", sheet_name, residuals = FALSE, forecast_only = FALSE, start_date, end_date, naive = FALSE, export_pred_raw = FALSE, metric = "mape", external_axes) {
  o <- do.call(what=py$openbb$forecast$nhits_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Plot data from a dataset
#'
#' @description Wrapper for Python function forecast.plot from OpenBB Terminal SDK
#'
#' @param data (data.frame) The dataframe to plot
#' @param export (character length 1) Format to export image
#' @export
#* @get /forecast.plot
forecast.plot <- function(data, columns, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$forecast$plot, args=as.list(rlang::call_match())[-1])
  o
}


#' Plot data from a dataset
#'
#' @description Wrapper for Python function forecast.plot_chart from OpenBB Terminal SDK
#'
#' @param data (data.frame) The dataframe to plot
#' @param export (character length 1) Format to export image
#' @export
#* @get /forecast.plot_chart
forecast.plot_chart <- function(data, columns, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$forecast$plot_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Perform Regression Forecasting
#'
#' @description Wrapper for Python function forecast.regr from OpenBB Terminal SDK
#'
#' @param target_column (character length 1) Target column to forecast. Defaults to "close".
#' @param n_predict (integer length 1) Days to predict. Defaults to 5.
#' @param train_split (numeric length 1) Train/val split. Defaults to 0.85.
#' @param forecast_horizon (integer length 1) Forecast horizon when performing historical forecasting. Defaults to 5.
#' @param output_chunk_length (integer length 1) The length of the forecast of the model. Defaults to 1.
#' @param metric (character length 1) Metric to use for evaluation. Defaults to "mape".
#' @examples
#' forecast.regr(n_predict=5, target_column='close', train_split=0.85, forecast_horizon=5, output_chunk_length=1)
#' @export
#* @get /forecast.regr
forecast.regr <- function(data, target_column = "close", n_predict = 5, past_covariates, train_split = 0.85, forecast_horizon = 5, output_chunk_length = 5, lags, metric = "mape") {
  o <- do.call(what=py$openbb$forecast$regr, args=as.list(rlang::call_match())[-1])
  o
}


#' Display Regression Forecasting
#'
#' @description Wrapper for Python function forecast.regr_chart from OpenBB Terminal SDK
#'
#' @param target_column (character length 1) Target column to forecast. Defaults to "close".
#' @param dataset_name (character length 1) The name of the ticker to be predicted
#' @param n_predict (integer length 1) Days to predict. Defaults to 5.
#' @param train_split (numeric length 1) Train/val split. Defaults to 0.85.
#' @param forecast_horizon (integer length 1) Forecast horizon when performing historical forecasting. Defaults to 5.
#' @param output_chunk_length (integer length 1) The length of the forecast of the model. Defaults to 1.
#' @param export (character length 1) Format to export data
#' @param residuals (logical length 1) Whether to show residuals for the model. Defaults to False.
#' @param forecast_only (logical length 1) Whether to only show dates in the forecasting range. Defaults to False.
#' @param naive (logical length 1) Whether to show the naive baseline. This just assumes the closing price will be the same
#'     as the previous day's closing price. Defaults to False.
#' @param metric (character length 1) The metric to use for the forecast. Defaults to "mape".
#' @examples
#' forecast.regr_chart(target_column='close', n_predict=5, train_split=0.85, forecast_horizon=5, output_chunk_length=1, residuals=FALSE, forecast_only=FALSE, naive=FALSE)
#' @export
#* @get /forecast.regr_chart
forecast.regr_chart <- function(data, target_column = "close", dataset_name = "", n_predict = 5, past_covariates, train_split = 0.85, forecast_horizon = 5, output_chunk_length = 5, lags, export = "", sheet_name, residuals = FALSE, forecast_only = FALSE, start_date, end_date, naive = FALSE, explainability_raw = FALSE, export_pred_raw = FALSE, metric = "mape", external_axes) {
  o <- do.call(what=py$openbb$forecast$regr_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Rename a column in a dataframe
#'
#' @description Wrapper for Python function forecast.rename from OpenBB Terminal SDK
#'
#' @param data (data.frame) The dataframe to have a column renamed
#' @param old_column (character length 1) The column that will have its name changed
#' @param new_column (character length 1) The name to update to
#' @export
#* @get /forecast.rename
forecast.rename <- function(data, old_column, new_column) {
  o <- do.call(what=py$openbb$forecast$rename, args=as.list(rlang::call_match())[-1])
  o
}


#' Perform RNN forecasting
#'
#' @description Wrapper for Python function forecast.rnn from OpenBB Terminal SDK
#'
#' @param target_column (character length 1) Target column to forecast. Defaults to "close".
#' @param n_predict (integer length 1) Days to predict. Defaults to 5.
#' @param train_split (numeric length 1) Train/val split. Defaults to 0.85.
#' @param forecast_horizon (integer length 1) Forecast horizon when performing historical forecasting. Defaults to 5.
#' @param model_type (character length 1) Either a string specifying the RNN module type ("RNN", "LSTM" or "GRU"). Defaults to "LSTM".
#' @param hidden_dim (integer length 1) Size for feature maps for each hidden RNN layer.. Defaults to 20.
#' @param dropout (numeric length 1) Fraction of neurons affected by Dropout. Defaults to 0.0.
#' @param batch_size (integer length 1) Number of time series (input and output sequences) used in each training pass. Defaults to 32.
#' @param n_epochs (integer length 1) Number of epochs over which to train the model. Defaults to 100.
#' @param learning_rate (numeric length 1) Defaults to 1e-3.
#' @param model_save_name (character length 1) Name for model. Defaults to "brnn_model".
#' @param force_reset (logical length 1) If set to True, any previously-existing model with the same name will be reset
#'     (all checkpoints will be discarded). Defaults to True.
#' @param save_checkpoints (logical length 1) Whether or not to automatically save the untrained model and checkpoints from training.
#'     Defaults to True.
#' @param metric (character length 1) Metric to use for model selection. Defaults to "mape".
#' @examples
#' forecast.rnn(n_predict=5, target_column='close', train_split=0.85, forecast_horizon=5, model_type='LSTM', hidden_dim=20, dropout=0, batch_size=16, n_epochs=100, learning_rate=0.001, model_save_name='rnn_model', force_reset=TRUE, save_checkpoints=TRUE)
#' @export
#* @get /forecast.rnn
forecast.rnn <- function(data, target_column = "close", n_predict = 5, train_split = 0.85, forecast_horizon = 5, model_type = "LSTM", hidden_dim = 20, dropout = 0.0, batch_size = 32, n_epochs = 100, learning_rate = 0.001, model_save_name = "rnn_model", training_length = 20, input_chunk_size = 14, force_reset = TRUE, save_checkpoints = TRUE, metric = "mape") {
  o <- do.call(what=py$openbb$forecast$rnn, args=as.list(rlang::call_match())[-1])
  o
}


#' Display RNN forecast
#'
#' @description Wrapper for Python function forecast.rnn_chart from OpenBB Terminal SDK
#'
#' @param target_column (character length 1) Target column to forecast. Defaults to "close".
#' @param dataset_name (character length 1) The name of the ticker to be predicted
#' @param n_predict (integer length 1) Days to predict. Defaults to 5.
#' @param train_split (numeric length 1) Train/val split. Defaults to 0.85.
#' @param forecast_horizon (integer length 1) Forecast horizon when performing historical forecasting. Defaults to 5.
#' @param model_type (character length 1) Either a string specifying the RNN module type ("RNN", "LSTM" or "GRU"). Defaults to "LSTM".
#' @param hidden_dim (integer length 1) Size for feature maps for each hidden RNN layer.. Defaults to 20.
#' @param dropout (numeric length 1) Fraction of neurons affected by Dropout. Defaults to 0.0.
#' @param batch_size (integer length 1) Number of time series (input and output sequences) used in each training pass. Defaults to 32.
#' @param n_epochs (integer length 1) Number of epochs over which to train the model. Defaults to 100.
#' @param learning_rate (numeric length 1) Defaults to 1e-3.
#' @param model_save_name (character length 1) Name for model. Defaults to "brnn_model".
#' @param force_reset (logical length 1) If set to True, any previously-existing model with the same name will be reset
#'     (all checkpoints will be discarded). Defaults to True.
#' @param save_checkpoints (logical length 1) Whether or not to automatically save the untrained model and checkpoints from training. Defaults to True.
#' @param export (character length 1) Format to export data
#' @param residuals (logical length 1) Whether to show residuals for the model. Defaults to False.
#' @param forecast_only (logical length 1) Whether to only show dates in the forecasting range. Defaults to False.
#' @param naive (logical length 1) Whether to show the naive baseline. This just assumes the closing price will be the same
#'     as the previous day's closing price. Defaults to False.
#' @param export_pred_raw (logical length 1) Whether to export the raw predictions. Defaults to False.
#' @param metric (character length 1) The metric to use for the forecast. Defaults to "mape".
#' @examples
#' forecast.rnn_chart(n_predict=5, target_column='close', train_split=0.85, forecast_horizon=5, model_type='LSTM', hidden_dim=20, dropout=0, batch_size=16, n_epochs=100, learning_rate=0.001, model_save_name='rnn_model', force_reset=TRUE, save_checkpoints=TRUE, forecast_only=FALSE, residuals=FALSE, naive=FALSE)
#' @export
#* @get /forecast.rnn_chart
forecast.rnn_chart <- function(data, target_column = "close", dataset_name = "", n_predict = 5, train_split = 0.85, forecast_horizon = 5, model_type = "LSTM", hidden_dim = 20, dropout = 0.0, batch_size = 32, n_epochs = 100, learning_rate = 0.001, model_save_name = "rnn_model", training_length = 20, input_chunk_size = 14, force_reset = TRUE, save_checkpoints = TRUE, export = "", sheet_name, residuals = FALSE, forecast_only = FALSE, start_date, end_date, naive = FALSE, export_pred_raw = FALSE, metric = "mape", external_axes) {
  o <- do.call(what=py$openbb$forecast$rnn_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' A momentum oscillator, which measures the percentage change between the current
#'
#' @description Wrapper for Python function forecast.roc from OpenBB Terminal SDK
#'
#' @param dataset (data.frame) The dataset you wish to calculate with
#' @param target_column (character length 1) The column you wish to add the ROC to
#' @param period (integer length 1) Time Span
#' @examples
#' forecast.roc(target_column='close', period=10)
#' @export
#* @get /forecast.roc
forecast.roc <- function(dataset, target_column = "close", period = 10) {
  o <- do.call(what=py$openbb$forecast$roc, args=as.list(rlang::call_match())[-1])
  o
}


#' A momentum indicator that measures the magnitude of recent price changes to evaluate
#'
#' @description Wrapper for Python function forecast.rsi from OpenBB Terminal SDK
#'
#' @param dataset (data.frame) The dataset you wish to calculate for
#' @param target_column (character length 1) The column you wish to add the RSI to
#' @param period (integer length 1) Time Span
#' @examples
#' forecast.rsi(target_column='close', period=10)
#' @export
#* @get /forecast.rsi
forecast.rsi <- function(dataset, target_column = "close", period = 10) {
  o <- do.call(what=py$openbb$forecast$rsi, args=as.list(rlang::call_match())[-1])
  o
}


#' Performs Random Walk with Drift forecasting
#'
#' @description Wrapper for Python function forecast.rwd from OpenBB Terminal SDK
#'
#' @param target_column (character length 1) Target column to forecast. Defaults to "close".
#' @param n_predict (integer length 1) Number of days to forecast
#' @param start_window (numeric length 1) Size of sliding window from start of timeseries and onwards
#' @param forecast_horizon (integer length 1) Number of days to forecast when backtesting and retraining historical
#' @examples
#' forecast.rwd(target_column='close', n_predict=5, start_window=0.85, forecast_horizon=5)
#' @export
#* @get /forecast.rwd
forecast.rwd <- function(data, target_column = "close", n_predict = 5, start_window = 0.85, forecast_horizon = 5) {
  o <- do.call(what=py$openbb$forecast$rwd, args=as.list(rlang::call_match())[-1])
  o
}


#' Display Random Walk with Drift Model
#'
#' @description Wrapper for Python function forecast.rwd_chart from OpenBB Terminal SDK
#'
#' @param target_column (character length 1) Target column to forecast. Defaults to "close".
#' @param dataset_name (character length 1) The name of the ticker to be predicted
#' @param n_predict (integer length 1) Number of days to forecast
#' @param start_window (numeric length 1) Size of sliding window from start of timeseries and onwards
#' @param forecast_horizon (integer length 1) Number of days to forecast when backtesting and retraining historical
#' @param export (character length 1) Format to export data
#' @param residuals (logical length 1) Whether to show residuals for the model. Defaults to False.
#' @param forecast_only (logical length 1) Whether to only show dates in the forecasting range. Defaults to False.
#' @param naive (logical length 1) Whether to show the naive baseline. This just assumes the closing price will be the same
#'     as the previous day's closing price. Defaults to False.
#' @examples
#' forecast.rwd_chart(target_column='close', n_predict=5, start_window=0.85, forecast_horizon=5, residuals=FALSE, forecast_only=FALSE, naive=FALSE)
#' @export
#* @get /forecast.rwd_chart
forecast.rwd_chart <- function(data, target_column = "close", dataset_name = "", n_predict = 5, start_window = 0.85, forecast_horizon = 5, export = "", sheet_name, residuals = FALSE, forecast_only = FALSE, start_date, end_date, naive = FALSE, export_pred_raw = FALSE, external_axes) {
  o <- do.call(what=py$openbb$forecast$rwd_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Plot seasonality from a dataset
#'
#' @description Wrapper for Python function forecast.season_chart from OpenBB Terminal SDK
#'
#' @param data (data.frame) The dataframe to plot
#' @param column (character length 1) The column of the dataframe to analyze
#' @param export (character length 1) Format to export image
#' @param max_lag (integer length 1) The maximal lag order to consider. Default is 24.
#' @param alpha (numeric length 1) The confidence interval to display. Default is 0.05.
#' @examples
#' forecast.season_chart(column='close', max_lag=24, alpha=0.05)
#' @export
#* @get /forecast.season_chart
forecast.season_chart <- function(data, column = "close", export = "", sheet_name, m, max_lag = 24, alpha = 0.05, external_axes) {
  o <- do.call(what=py$openbb$forecast$season_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Performs Seasonal Naive forecasting
#'
#' @description Wrapper for Python function forecast.seasonalnaive from OpenBB Terminal SDK
#'
#' @param target_column (character length 1) Target column to forecast. Defaults to "close".
#' @param seasonal_periods (integer length 1) Number of seasonal periods in a year (7 for daily data)
#'     If not set, inferred from frequency of the series.
#' @param n_predict (integer length 1) Number of days to forecast
#' @param start_window (numeric length 1) Size of sliding window from start of timeseries and onwards
#' @param forecast_horizon (integer length 1) Number of days to forecast when backtesting and retraining historical
#' @examples
#' forecast.seasonalnaive(target_column='close', seasonal_periods=7, n_predict=5, start_window=0.85, forecast_horizon=5)
#' @export
#* @get /forecast.seasonalnaive
forecast.seasonalnaive <- function(data, target_column = "close", seasonal_periods = 7, n_predict = 5, start_window = 0.85, forecast_horizon = 5) {
  o <- do.call(what=py$openbb$forecast$seasonalnaive, args=as.list(rlang::call_match())[-1])
  o
}


#' Display SeasonalNaive Model
#'
#' @description Wrapper for Python function forecast.seasonalnaive_chart from OpenBB Terminal SDK
#'
#' @param target_column (character length 1) Target column to forecast. Defaults to "close".
#' @param dataset_name (character length 1) The name of the ticker to be predicted
#' @param seasonal_periods (integer length 1) Number of seasonal periods in a year
#'     If not set, inferred from frequency of the series.
#' @param n_predict (integer length 1) Number of days to forecast
#' @param start_window (numeric length 1) Size of sliding window from start of timeseries and onwards
#' @param forecast_horizon (integer length 1) Number of days to forecast when backtesting and retraining historical
#' @param export (character length 1) Format to export data
#' @param residuals (logical length 1) Whether to show residuals for the model. Defaults to False.
#' @param forecast_only (logical length 1) Whether to only show dates in the forecasting range. Defaults to False.
#' @param naive (logical length 1) Whether to show the naive baseline. This just assumes the closing price will be the same
#'     as the previous day's closing price. Defaults to False.
#' @examples
#' forecast.seasonalnaive_chart(target_column='close', seasonal_periods=7, n_predict=5, start_window=0.85, forecast_horizon=5, residuals=FALSE, forecast_only=FALSE, naive=FALSE)
#' @export
#* @get /forecast.seasonalnaive_chart
forecast.seasonalnaive_chart <- function(data, target_column = "close", dataset_name = "", seasonal_periods = 7, n_predict = 5, start_window = 0.85, forecast_horizon = 5, export = "", sheet_name, residuals = FALSE, forecast_only = FALSE, start_date, end_date, naive = FALSE, export_pred_raw = FALSE, external_axes) {
  o <- do.call(what=py$openbb$forecast$seasonalnaive_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Show a dataframe in a table
#'
#' @description Wrapper for Python function forecast.show from OpenBB Terminal SDK
#'
#' @param data (data.frame) The dataframe to show
#' @param limit (integer length 1) The number of rows to show
#' @param limit_col (integer length 1) The number of columns to show
#' @param name (character length 1) The name of the dataframe
#' @param export (character length 1) Format to export data
#' @export
#* @get /forecast.show
forecast.show <- function(data, limit = 15, limit_col = 10, name = "", export = "", sheet_name) {
  o <- do.call(what=py$openbb$forecast$show, args=as.list(rlang::call_match())[-1])
  o
}


#' A price signal based on short/long term price.
#'
#' @description Wrapper for Python function forecast.signal from OpenBB Terminal SDK
#'
#' @param dataset (data.frame) The dataset you wish to calculate with
#' @export
#* @get /forecast.signal
forecast.signal <- function(dataset, target_column = "close") {
  o <- do.call(what=py$openbb$forecast$signal, args=as.list(rlang::call_match())[-1])
  o
}


#' Stochastic Oscillator %K and %D : A stochastic oscillator is a momentum indicator comparing a particular closing
#'
#' @description Wrapper for Python function forecast.sto from OpenBB Terminal SDK
#'
#' @param dataset (data.frame) The dataset you wish to calculate for
#' @param close_column (character length 1) The column name for the close price
#' @param high_column (character length 1) The column name for the high price
#' @param low_column (character length 1) The column name for the low price
#' @param period (integer length 1) Span of time to calculate over
#' @examples
#' forecast.sto(period=10)
#' @export
#* @get /forecast.sto
forecast.sto <- function(dataset, close_column = "close", high_column = "high", low_column = "low", period = 10) {
  o <- do.call(what=py$openbb$forecast$sto, args=as.list(rlang::call_match())[-1])
  o
}


#' Perform TCN forecasting
#'
#' @description Wrapper for Python function forecast.tcn from OpenBB Terminal SDK
#'
#' @param target_column (character length 1) Target column to forecast. Defaults to "close".
#' @param n_predict (integer length 1) Days to predict. Defaults to 5.
#' @param train_split (numeric length 1) Train/val split. Defaults to 0.85.
#' @param forecast_horizon (integer length 1) Forecast horizon when performing historical forecasting. Defaults to 5.
#' @param input_chunk_length (integer length 1) Number of past time steps that are fed to the forecasting module at prediction time. Defaults to 14.
#' @param output_chunk_length (integer length 1) The length of the forecast of the model. Defaults to 5.
#' @param dropout (numeric length 1) Fraction of neurons affected by Dropout. Defaults to 0.1.
#' @param num_filters (integer length 1) The number of filters in a convolutional layer of the TCN. Defaults to 6.
#' @param weight_norm (logical length 1) Boolean value indicating whether to use weight normalization. Defaults to True.
#' @param dilation_base (integer length 1) The base of the exponent that will determine the dilation on every level. Defaults to 2.
#' @param n_epochs (integer length 1) Number of epochs over which to train the model. Defaults to 100.
#' @param learning_rate (numeric length 1) Defaults to 1e-3.
#' @param batch_size (integer length 1) Number of time series (input and output sequences) used in each training pass. Defaults to 32.
#' @param model_save_name (character length 1) Name for model. Defaults to "brnn_model".
#' @param force_reset (logical length 1) If set to True, any previously-existing model with the same name will be reset
#'     (all checkpoints will be discarded). Defaults to True.
#' @param save_checkpoints (logical length 1) Whether or not to automatically save the untrained model and checkpoints from training.
#'     Defaults to True.
#' @param metric (character length 1) Metric to use for model selection. Defaults to "mape".
#' @examples
#' forecast.tcn(target_column='close', n_predict=5, train_split=0.85, forecast_horizon=5, input_chunk_length=14, output_chunk_length=5, dropout=0.1, num_filters=6, weight_norm=TRUE, dilation_base=2, batch_size=800, n_epochs=100, learning_rate=0.001, model_save_name='tcn_model', force_reset=TRUE, save_checkpoints=TRUE)
#' @export
#* @get /forecast.tcn
forecast.tcn <- function(data, target_column = "close", n_predict = 5, past_covariates, train_split = 0.85, forecast_horizon = 5, input_chunk_length = 14, output_chunk_length = 5, dropout = 0.1, num_filters = 3, weight_norm = TRUE, dilation_base = 2, n_epochs = 300, learning_rate = 0.001, batch_size = 32, model_save_name = "tcn_model", force_reset = TRUE, save_checkpoints = TRUE, metric = "mape") {
  o <- do.call(what=py$openbb$forecast$tcn, args=as.list(rlang::call_match())[-1])
  o
}


#' Display TCN forecast
#'
#' @description Wrapper for Python function forecast.tcn_chart from OpenBB Terminal SDK
#'
#' @param target_column (character length 1) Target column to forecast. Defaults to "close".
#' @param dataset_name (character length 1) The name of the ticker to be predicted
#' @param n_predict (integer length 1) Days to predict. Defaults to 5.
#' @param train_split (numeric length 1) Train/val split. Defaults to 0.85.
#' @param forecast_horizon (integer length 1) Forecast horizon when performing historical forecasting. Defaults to 5.
#' @param input_chunk_length (integer length 1) Number of past time steps that are fed to the forecasting module at prediction time. Defaults to 14.
#' @param output_chunk_length (integer length 1) The length of the forecast of the model. Defaults to 5.
#' @param dropout (numeric length 1) Fraction of neurons affected by Dropout. Defaults to 0.1.
#' @param num_filters (integer length 1) The number of filters in a convolutional layer of the TCN. Defaults to 6.
#' @param weight_norm (logical length 1) Boolean value indicating whether to use weight normalization. Defaults to True.
#' @param dilation_base (integer length 1) The base of the exponent that will determine the dilation on every level. Defaults to 2.
#' @param n_epochs (integer length 1) Number of epochs over which to train the model. Defaults to 100.
#' @param learning_rate (numeric length 1) Defaults to 1e-3.
#' @param batch_size (integer length 1) Number of time series (input and output sequences) used in each training pass. Defaults to 32.
#' @param model_save_name (character length 1) Name for model. Defaults to "brnn_model".
#' @param force_reset (logical length 1) If set to True, any previously-existing model with the same name will be reset
#'     (all checkpoints will be discarded). Defaults to True.
#' @param save_checkpoints (logical length 1) Whether or not to automatically save the untrained model and checkpoints from training. Defaults to True.
#' @param export (character length 1) Format to export data
#' @param residuals (logical length 1) Whether to show residuals for the model. Defaults to False.
#' @param forecast_only (logical length 1) Whether to only show dates in the forecasting range. Defaults to False.
#' @param naive (logical length 1) Whether to show the naive baseline. This just assumes the closing price will be the same
#'     as the previous day's closing price. Defaults to False.
#' @param export_pred_raw (logical length 1) Whether to export the raw predicted values. Defaults to False.
#' @param metric (character length 1) The metric to use for the model. Defaults to "mape".
#' @examples
#' forecast.tcn_chart(target_column='close', n_predict=5, train_split=0.85, forecast_horizon=5, input_chunk_length=14, output_chunk_length=5, dropout=0.1, num_filters=6, weight_norm=TRUE, dilation_base=2, batch_size=800, n_epochs=100, learning_rate=0.001, model_save_name='tcn_model', force_reset=TRUE, save_checkpoints=TRUE, residuals=FALSE, forecast_only=FALSE, naive=FALSE)
#' @export
#* @get /forecast.tcn_chart
forecast.tcn_chart <- function(data, target_column = "close", dataset_name = "", n_predict = 5, past_covariates, train_split = 0.85, forecast_horizon = 5, input_chunk_length = 14, output_chunk_length = 5, dropout = 0.1, num_filters = 3, weight_norm = TRUE, dilation_base = 2, n_epochs = 300, learning_rate = 0.001, batch_size = 32, model_save_name = "tcn_model", force_reset = TRUE, save_checkpoints = TRUE, export = "", sheet_name, residuals = FALSE, forecast_only = FALSE, start_date, end_date, naive = FALSE, export_pred_raw = FALSE, metric = "mape", external_axes) {
  o <- do.call(what=py$openbb$forecast$tcn_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Performs Temporal Fusion Transformer forecasting
#'
#' @description Wrapper for Python function forecast.tft from OpenBB Terminal SDK
#'
#' @param target_column (character length 1) Target column to forecast. Defaults to "close".
#' @param n_predict (integer length 1) Days to predict. Defaults to 5.
#' @param train_split (numeric length 1) Train/val split. Defaults to 0.85.
#' @param forecast_horizon (integer length 1) Forecast horizon when performing historical forecasting. Defaults to 5.
#' @param input_chunk_length (integer length 1) Number of past time steps that are fed to the forecasting module at prediction time.
#'     Defaults to 14.
#' @param output_chunk_length (integer length 1) The length of the forecast of the model. Defaults to 5.
#' @param hidden_size (integer length 1) Hidden state size of the TFT. Defaults to 16.
#' @param lstm_layers (integer length 1) Number of layers for the Long Short Term Memory Encoder and Decoder. Defaults to 16.
#' @param full_attention (logical length 1) Whether to apply a multi-head attention query. Defaults to False>
#' @param dropout (numeric length 1) Fraction of neurons affected by dropout. Defaults to 0.1.
#' @param hidden_continuous_size (integer length 1) Default hidden size for processing continuous variables. Defaults to 8.
#' @param n_epochs (integer length 1) Number of epochs to run during training. Defaults to 200.
#' @param batch_size (integer length 1) Number of samples to pass through network during a single epoch. Defaults to 32.
#' @param model_save_name (character length 1) The name for the model. Defaults to tft_model
#' @param force_reset (logical length 1) If set to True, any previously-existing model with the same name will be reset
#'     (all checkpoints will be discarded). Defaults to True.
#' @param save_checkpoints (logical length 1) Whether or not to automatically save the untrained model and checkpoints from training.
#'     Defaults to True.
#' @param metric (character length 1) Metric to use for model selection. Defaults to "mape".
#' @examples
#' forecast.tft(target_column='close')
#' @export
#* @get /forecast.tft
forecast.tft <- function(data, target_column = "close", n_predict = 5, past_covariates, train_split = 0.85, forecast_horizon = 5, input_chunk_length = 14, output_chunk_length = 5, hidden_size = 16, lstm_layers = 1, num_attention_heads = 4, full_attention = FALSE, dropout = 0.1, hidden_continuous_size = 8, n_epochs = 200, batch_size = 32, model_save_name = "tft_model", force_reset = TRUE, save_checkpoints = TRUE, metric = "mape") {
  o <- do.call(what=py$openbb$forecast$tft, args=as.list(rlang::call_match())[-1])
  o
}


#' Display Temporal Fusion Transformer forecast
#'
#' @description Wrapper for Python function forecast.tft_chart from OpenBB Terminal SDK
#'
#' @param target_column (character length 1) Target column to forecast. Defaults to "close".
#' @param dataset_name (character length 1) The name of the ticker to be predicted
#' @param n_predict (integer length 1) Days to predict. Defaults to 5.
#' @param train_split (numeric length 1) Train/val split. Defaults to 0.85.
#' @param forecast_horizon (integer length 1) Forecast horizon when performing historical forecasting. Defaults to 5.
#' @param input_chunk_length (integer length 1) Number of past time steps that are fed to the forecasting module at prediction time.
#'     Defaults to 14.
#' @param output_chunk_length (integer length 1) The length of the forecast of the model. Defaults to 5.
#' @param hidden_size (integer length 1) Hidden state size of the TFT. Defaults to 16.
#' @param lstm_layers (integer length 1) Number of layers for the Long Short Term Memory Encoder and Decoder. Defaults to 16.
#' @param full_attention (logical length 1) Whether to apply a multi-head attention query. Defaults to False>
#' @param dropout (numeric length 1) Fraction of neurons affected by dropout. Defaults to 0.1.
#' @param hidden_continuous_size (integer length 1) Default hidden size for processing continuous variables. Defaults to 8.
#' @param n_epochs (integer length 1) Number of epochs to run during training. Defaults to 200.
#' @param batch_size (integer length 1) Number of samples to pass through network during a single epoch. Defaults to 32.
#' @param model_save_name (character length 1) The name for the model. Defaults to tft_model
#' @param force_reset (logical length 1) If set to True, any previously-existing model with the same name will be reset
#'     (all checkpoints will be discarded). Defaults to True.
#' @param save_checkpoints (logical length 1) Whether or not to automatically save the untrained model and checkpoints from training.
#'     Defaults to True.
#' @param residuals (logical length 1) Whether to show residuals for the model. Defaults to False.
#' @param forecast_only (logical length 1) Whether to only show dates in the forecasting range. Defaults to False.
#' @param naive (logical length 1) Whether to show the naive baseline. This just assumes the closing price will be the same
#'     as the previous day's closing price. Defaults to False.
#' @param metric (character length 1) The metric to use for the model. Defaults to "mape".
#' @examples
#' forecast.tft_chart(target_column='close', residuals=FALSE, forecast_only=FALSE, naive=FALSE)
#' @export
#* @get /forecast.tft_chart
forecast.tft_chart <- function(data, target_column = "close", dataset_name = "", n_predict = 5, past_covariates, train_split = 0.85, forecast_horizon = 5, input_chunk_length = 14, output_chunk_length = 5, hidden_size = 16, lstm_layers = 1, num_attention_heads = 4, full_attention = FALSE, dropout = 0.1, hidden_continuous_size = 8, n_epochs = 200, batch_size = 32, model_save_name = "tft_model", force_reset = TRUE, save_checkpoints = TRUE, export = "", sheet_name, residuals = FALSE, forecast_only = FALSE, start_date, end_date, naive = FALSE, export_pred_raw = FALSE, metric = "mape", external_axes) {
  o <- do.call(what=py$openbb$forecast$tft_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Performs Theta forecasting
#'
#' @description Wrapper for Python function forecast.theta from OpenBB Terminal SDK
#'
#' @param target_column (character length 1) Target column to forecast. Defaults to "close".
#' @param seasonal (character length 1) Seasonal component.  One of [N, A, M]
#'     Defaults to MULTIPLICATIVE.
#' @param seasonal_periods (integer length 1) Number of seasonal periods in a year
#'     If not set, inferred from frequency of the series.
#' @param n_predict (integer length 1) Number of days to forecast
#' @param start_window (numeric length 1) Size of sliding window from start of timeseries and onwards
#' @param forecast_horizon (integer length 1) Number of days to forecast when backtesting and retraining historical data
#' @param metric (character length 1) Metric to use when backtesting and retraining historical data. Defaults to "mape".
#' @examples
#' forecast.theta(target_column='close', seasonal='M', seasonal_periods=7, n_predict=5, start_window=0.85, forecast_horizon=5)
#' @export
#* @get /forecast.theta
forecast.theta <- function(data, target_column = "close", seasonal = "M", seasonal_periods = 7, n_predict = 5, start_window = 0.85, forecast_horizon = 5, metric = "mape") {
  o <- do.call(what=py$openbb$forecast$theta, args=as.list(rlang::call_match())[-1])
  o
}


#' Display Theta forecast
#'
#' @description Wrapper for Python function forecast.theta_chart from OpenBB Terminal SDK
#'
#' @param target_column (character length 1) Target column to forecast. Defaults to "close".
#' @param dataset_name (character length 1) The name of the ticker to be predicted
#' @param seasonal (character length 1) Seasonal component.  One of [N, A, M]
#'     Defaults to MULTIPLICATIVE.
#' @param seasonal_periods (integer length 1) Number of seasonal periods in a year
#'     If not set, inferred from frequency of the series.
#' @param n_predict (integer length 1) Number of days to forecast
#' @param start_window (numeric length 1) Size of sliding window from start of timeseries and onwards
#' @param forecast_horizon (integer length 1) Number of days to forecast when backtesting and retraining historical
#' @param export (character length 1) Format to export data
#' @param residuals (logical length 1) Whether to show residuals for the model. Defaults to False.
#' @param forecast_only (logical length 1) Whether to only show dates in the forecasting range. Defaults to False.
#' @param naive (logical length 1) Whether to show the naive baseline. This just assumes the closing price will be the same
#'     as the previous day's closing price. Defaults to False.
#' @param export_pred_raw (logical length 1) Whether to export the raw predicted values. Defaults to False.
#' @param metric (character length 1) The metric to use for backtesting. Defaults to "mape".
#' @examples
#' forecast.theta_chart(target_column='close', seasonal='M', seasonal_periods=7, n_predict=5, start_window=0.85, forecast_horizon=5, residuals=FALSE, forecast_only=FALSE, naive=FALSE)
#' @export
#* @get /forecast.theta_chart
forecast.theta_chart <- function(data, target_column = "close", dataset_name = "", seasonal = "M", seasonal_periods = 7, n_predict = 5, start_window = 0.85, forecast_horizon = 5, export = "", sheet_name, residuals = FALSE, forecast_only = FALSE, start_date, end_date, naive = FALSE, export_pred_raw = FALSE, metric = "mape", external_axes) {
  o <- do.call(what=py$openbb$forecast$theta_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Performs Transformer forecasting
#'
#' @description Wrapper for Python function forecast.trans from OpenBB Terminal SDK
#'
#' @param target_column (character length 1) Target column to forecast. Defaults to "close".
#' @param n_predict (integer length 1) Days to predict. Defaults to 5.
#' @param train_split (numeric length 1) Train/val split. Defaults to 0.85.
#' @param forecast_horizon (integer length 1) Forecast horizon when performing historical forecasting. Defaults to 5.
#' @param input_chunk_length (integer length 1) Number of past time steps that are fed to the forecasting module at prediction time. Defaults to 14.
#' @param output_chunk_length (integer length 1) The length of the forecast of the model. Defaults to 5.
#' @param d_model (integer length 1) The number of expected features in the encoder/decoder inputs. Defaults to 64.
#' @param nhead (integer length 1) The number of heads in the multi-head attention mechanism. Defaults to 4.
#' @param num_encoder_layers (integer length 1) The number of encoder layers in the encoder. Defaults to 3.
#' @param num_decoder_layers (integer length 1) The number of decoder layers in the encoder. Defaults to 3.
#' @param dim_feedforward (integer length 1) The dimension of the feedforward network model. Defaults to 512.
#' @param activation (character length 1) The activation function of encoder/decoder intermediate layer, ‘relu’ or ‘gelu’. Defaults to 'relu'.
#' @param dropout (numeric length 1) Fraction of neurons afected by Dropout. Defaults to 0.0.
#' @param batch_size (integer length 1) Number of time series (input and output sequences) used in each training pass. Defaults to 32.
#' @param n_epochs (integer length 1) Number of epochs over which to train the model. Defaults to 100.
#' @param learning_rate (numeric length 1) Defaults to 1e-3.
#' @param model_save_name (character length 1) Name for model. Defaults to "brnn_model".
#' @param force_reset (logical length 1) If set to True, any previously-existing model with the same name will be reset (all checkpoints will be
#'     discarded). Defaults to True.
#' @param save_checkpoints (logical length 1) Whether or not to automatically save the untrained model and checkpoints from training. Defaults to True.
#' @param metric (character length 1) Metric to use for model selection. Defaults to "mape".
#' @examples
#' forecast.trans(n_predict=5, target_column='close', train_split=0.85, forecast_horizon=5, input_chunk_length=14, output_chunk_length=5, d_model=64, nhead=4, num_encoder_layers=3, num_decoder_layers=3, dim_feedforward=512, activation='relu', dropout=0, batch_size=32, n_epochs=100, learning_rate=0.001, model_save_name='trans_model', force_reset=TRUE, save_checkpoints=TRUE)
#' @export
#* @get /forecast.trans
forecast.trans <- function(data, target_column = "close", n_predict = 5, train_split = 0.85, past_covariates, forecast_horizon = 5, input_chunk_length = 14, output_chunk_length = 5, d_model = 64, nhead = 4, num_encoder_layers = 3, num_decoder_layers = 3, dim_feedforward = 512, activation = "relu", dropout = 0.0, batch_size = 32, n_epochs = 300, learning_rate = 0.001, model_save_name = "trans_model", force_reset = TRUE, save_checkpoints = TRUE, metric = "mape") {
  o <- do.call(what=py$openbb$forecast$trans, args=as.list(rlang::call_match())[-1])
  o
}


#' Display Transformer forecast
#'
#' @description Wrapper for Python function forecast.trans_chart from OpenBB Terminal SDK
#'
#' @param target_column (character length 1) Target column to forecast. Defaults to "close".
#' @param dataset_name (character length 1) The name of the ticker to be predicted
#' @param n_predict (integer length 1) Days to predict. Defaults to 5.
#' @param train_split (numeric length 1) Train/val split. Defaults to 0.85.
#' @param forecast_horizon (integer length 1) Forecast horizon when performing historical forecasting. Defaults to 5.
#' @param input_chunk_length (integer length 1) Number of past time steps that are fed to the forecasting module at prediction time. Defaults to 14.
#' @param output_chunk_length (integer length 1) The length of the forecast of the model. Defaults to 5.
#' @param d_model (integer length 1) The number of expected features in the encoder/decoder inputs. Defaults to 64.
#' @param nhead (integer length 1) The number of heads in the multi-head attention mechanism. Defaults to 4.
#' @param num_encoder_layers (integer length 1) The number of encoder layers in the encoder. Defaults to 3.
#' @param num_decoder_layers (integer length 1) The number of decoder layers in the encoder. Defaults to 3.
#' @param dim_feedforward (integer length 1) The dimension of the feedforward network model. Defaults to 512.
#' @param activation (character length 1) The activation function of encoder/decoder intermediate layer, ‘relu’ or ‘gelu’. Defaults to 'relu'.
#' @param dropout (numeric length 1) Fraction of neurons affected by Dropout. Defaults to 0.1.
#' @param n_epochs (integer length 1) Number of epochs over which to train the model. Defaults to 100.
#' @param model_save_name (character length 1) Name for model. Defaults to "brnn_model".
#' @param force_reset (logical length 1) If set to True, any previously-existing model with the same name will be reset
#'     (all checkpoints will be discarded). Defaults to True.
#' @param save_checkpoints (logical length 1) Whether or not to automatically save the untrained model and checkpoints from training.
#'     Defaults to True.
#' @param export (character length 1) Format to export data
#' @param residuals (logical length 1) Whether to show residuals for the model. Defaults to False.
#' @param forecast_only (logical length 1) Whether to only show dates in the forecasting range. Defaults to False.
#' @param naive (logical length 1) Whether to show the naive baseline. This just assumes the closing price will be the same
#'     as the previous day's closing price. Defaults to False.
#' @param export_pred_raw (logical length 1) Whether to export the raw predicted values. Defaults to False.
#' @param metric (character length 1) The metric to use for the model. Defaults to "mape".
#' @examples
#' forecast.trans_chart(n_predict=5, target_column='close', train_split=0.85, forecast_horizon=5, input_chunk_length=14, output_chunk_length=5, d_model=64, nhead=4, num_encoder_layers=3, num_decoder_layers=3, dim_feedforward=512, activation='relu', dropout=0.1, n_epochs=100, model_save_name='trans_model', force_reset=TRUE, save_checkpoints=TRUE, residuals=FALSE, forecast_only=FALSE, naive=FALSE)
#' @export
#* @get /forecast.trans_chart
forecast.trans_chart <- function(data, target_column = "close", dataset_name = "", n_predict = 5, past_covariates, train_split = 0.85, forecast_horizon = 5, input_chunk_length = 14, output_chunk_length = 5, d_model = 64, nhead = 4, num_encoder_layers = 3, num_decoder_layers = 3, dim_feedforward = 512, activation = "relu", dropout = 0.0, batch_size = 32, n_epochs = 300, learning_rate = 0.001, model_save_name = "trans_model", force_reset = TRUE, save_checkpoints = TRUE, export = "", sheet_name, residuals = FALSE, forecast_only = FALSE, start_date, end_date, naive = FALSE, export_pred_raw = FALSE, metric = "mape", external_axes) {
  o <- do.call(what=py$openbb$forecast$trans_chart, args=as.list(rlang::call_match())[-1])
  o
}


#'
#' @description Wrapper for Python function forecast.whisper from OpenBB Terminal SDK
#'
#' @export
#* @get /forecast.whisper
forecast.whisper <- function(video = "", model_name = "base", subtitles_format = "vtt", verbose = FALSE, task = "transcribe", language, breaklines = 0, output_dir = "") {
  o <- do.call(what=py$openbb$forecast$whisper, args=as.list(rlang::call_match())[-1])
  o
}


#'
#' @description Wrapper for Python function forex.about from OpenBB Terminal SDK
#'
#' @export
#* @get /forex.about
forex.about <- function() {
  o <- do.call(what=py$openbb$forex$about, args=as.list(rlang::call_match())[-1])
  o
}


#' Show candle plot for fx data.
#'
#' @description Wrapper for Python function forex.candle from OpenBB Terminal SDK
#'
#' @param data (data.frame) Loaded fx historical data
#' @param to_symbol (character length 1) To forex symbol
#' @param from_symbol (character length 1) From forex symbol
#' @export
#* @get /forex.candle
forex.candle <- function(data, to_symbol = "", from_symbol = "", ma, external_axes, use_matplotlib = TRUE, add_trend = FALSE, yscale = "linear") {
  o <- do.call(what=py$openbb$forex$candle, args=as.list(rlang::call_match())[-1])
  o
}


#' Gets forward rates from fxempire
#'
#' @description Wrapper for Python function forex.fwd from OpenBB Terminal SDK
#'
#' @param to_symbol (character length 1) To currency
#' @param from_symbol (character length 1) From currency
#' @examples
#' forex.fwd(to_symbol='USD', from_symbol='EUR')
#' @export
#* @get /forex.fwd
forex.fwd <- function(to_symbol = "USD", from_symbol = "EUR") {
  o <- do.call(what=py$openbb$forex$fwd, args=as.list(rlang::call_match())[-1])
  o
}


#' Load AV currency codes from a local file.
#'
#' @description Wrapper for Python function forex.get_currency_list from OpenBB Terminal SDK
#'
#' @export
#* @get /forex.get_currency_list
forex.get_currency_list <- function() {
  o <- do.call(what=py$openbb$forex$get_currency_list, args=as.list(rlang::call_match())[-1])
  o
}


#' Load forex for two given symbols.
#'
#' @description Wrapper for Python function forex.load from OpenBB Terminal SDK
#'
#' @param to_symbol (character length 1) The from currency symbol. Ex: USD, EUR, GBP, YEN
#' @param from_symbol (character length 1) The from currency symbol. Ex: USD, EUR, GBP, YEN
#' @param resolution (character length 1) The resolution for the data, by default "d"
#' @param interval (character length 1) What interval to get data for, by default "1day"
#' @param source (character length 1) Where to get data from, by default "YahooFinance"
#' @param verbose (logical length 1) Display verbose information on what was the pair that was loaded, by default True
#' @examples
#' forex.load(resolution='d', interval='1day', source='YahooFinance', verbose=FALSE)
#' @export
#* @get /forex.load
forex.load <- function(to_symbol, from_symbol, resolution = "d", interval = "1day", start_date, end_date, source = "YahooFinance", verbose = FALSE) {
  o <- do.call(what=py$openbb$forex$load, args=as.list(rlang::call_match())[-1])
  o
}


#' Get forex quote.
#'
#' @description Wrapper for Python function forex.quote from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Forex symbol to get quote for.
#' @param source (character length 1) Source to get quote from, by default "YahooFinance"
#' @examples
#' forex.quote(symbol='EURUSD', source='YahooFinance')
#' @export
#* @get /forex.quote
forex.quote <- function(symbol, source = "YahooFinance") {
  o <- do.call(what=py$openbb$forex$quote, args=as.list(rlang::call_match())[-1])
  o
}


#'
#' @description Wrapper for Python function forex.oanda.about from OpenBB Terminal SDK
#'
#' @export
#* @get /forex.oanda.about
forex.oanda.about <- function() {
  o <- do.call(what=py$openbb$forex$oanda$about, args=as.list(rlang::call_match())[-1])
  o
}


#' Request data of significant events calendar.
#'
#' @description Wrapper for Python function forex.oanda.calendar from OpenBB Terminal SDK
#'
#' @param days (integer length 1) Number of days in advance
#' @examples
#' forex.oanda.calendar(days=14)
#' @export
#* @get /forex.oanda.calendar
forex.oanda.calendar <- function(days = 14, instrument) {
  o <- do.call(what=py$openbb$forex$oanda$calendar, args=as.list(rlang::call_match())[-1])
  o
}


#' View calendar of significant events.
#'
#' @description Wrapper for Python function forex.oanda.calendar_chart from OpenBB Terminal SDK
#'
#' @param instrument (character length 1) The loaded currency pair
#' @param days (integer length 1) Number of days in advance
#' @examples
#' forex.oanda.calendar_chart(days=7)
#' @export
#* @get /forex.oanda.calendar_chart
forex.oanda.calendar_chart <- function(instrument, days = 7) {
  o <- do.call(what=py$openbb$forex$oanda$calendar_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Request cancellation of a pending order.
#'
#' @description Wrapper for Python function forex.oanda.cancel from OpenBB Terminal SDK
#'
#' @param orderID (character length 1) The pending order ID to cancel.
#' @param accountID (character length 1) Oanda account ID, by default cfg.OANDA_ACCOUNT
#' @examples
#' forex.oanda.cancel(accountID='REPLACE_ME')
#' @export
#* @get /forex.oanda.cancel
forex.oanda.cancel <- function(orderID, accountID = "REPLACE_ME") {
  o <- do.call(what=py$openbb$forex$oanda$cancel, args=as.list(rlang::call_match())[-1])
  o
}


#' Cancel a Pending Order.
#'
#' @description Wrapper for Python function forex.oanda.cancel_chart from OpenBB Terminal SDK
#'
#' @param accountID (character length 1) Oanda user account ID
#' @param orderID (character length 1) The pending order ID to cancel.
#' @export
#* @get /forex.oanda.cancel_chart
forex.oanda.cancel_chart <- function(accountID, orderID = "") {
  o <- do.call(what=py$openbb$forex$oanda$cancel_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Request data for candle chart.
#'
#' @description Wrapper for Python function forex.oanda.candles from OpenBB Terminal SDK
#'
#' @param granularity (character length 1) Data granularity, by default "D"
#' @param candlecount (integer length 1) Limit for the number of data points, by default 180
#' @examples
#' forex.oanda.candles(granularity='D', candlecount=180)
#' @export
#* @get /forex.oanda.candles
forex.oanda.candles <- function(instrument, granularity = "D", candlecount = 180) {
  o <- do.call(what=py$openbb$forex$oanda$candles, args=as.list(rlang::call_match())[-1])
  o
}


#' Show candle chart.
#'
#' @description Wrapper for Python function forex.oanda.candles_chart from OpenBB Terminal SDK
#'
#' @param instrument (character length 1) The loaded currency pair
#' @param granularity (character length 1) The timeframe to get for the candle chart. Seconds: S5, S10, S15, S30
#'     Minutes: M1, M2, M4, M5, M10, M15, M30 Hours: H1, H2, H3, H4, H6, H8, H12
#'     Day (default): D, Week: W Month: M,
#' @param candlecount (integer length 1) Limit for the number of data points
#' @examples
#' forex.oanda.candles_chart(granularity='D', candlecount=180)
#' @export
#* @get /forex.oanda.candles_chart
forex.oanda.candles_chart <- function(instrument = "", granularity = "D", candlecount = 180, additional_charts, external_axes) {
  o <- do.call(what=py$openbb$forex$oanda$candles_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Close a trade.
#'
#' @description Wrapper for Python function forex.oanda.close from OpenBB Terminal SDK
#'
#' @param orderID (character length 1) ID of the order to close
#' @param accountID (character length 1) Oanda account ID, by default cfg.OANDA_ACCOUNT
#' @examples
#' forex.oanda.close(units=0, accountID='REPLACE_ME')
#' @export
#* @get /forex.oanda.close
forex.oanda.close <- function(orderID, units, accountID = "REPLACE_ME") {
  o <- do.call(what=py$openbb$forex$oanda$close, args=as.list(rlang::call_match())[-1])
  o
}


#' Close a trade.
#'
#' @description Wrapper for Python function forex.oanda.close_chart from OpenBB Terminal SDK
#'
#' @param accountID (character length 1) Oanda user account ID
#' @param orderID (character length 1) ID of the order to close
#' @export
#* @get /forex.oanda.close_chart
forex.oanda.close_chart <- function(accountID, orderID = "", units) {
  o <- do.call(what=py$openbb$forex$oanda$close_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Request the orders list from Oanda.
#'
#' @description Wrapper for Python function forex.oanda.listorders from OpenBB Terminal SDK
#'
#' @param order_state (character length 1) Filter orders by a specific state ("PENDING", "CANCELLED", etc.)
#' @param order_count (integer length 1) Limit the number of orders to retrieve
#' @param accountID (character length 1) Oanda account ID, by default cfg.OANDA_ACCOUNT
#' @examples
#' forex.oanda.listorders(order_state='PENDING', order_count=0, accountID='REPLACE_ME')
#' @export
#* @get /forex.oanda.listorders
forex.oanda.listorders <- function(order_state = "PENDING", order_count = 0, accountID = "REPLACE_ME") {
  o <- do.call(what=py$openbb$forex$oanda$listorders, args=as.list(rlang::call_match())[-1])
  o
}


#' List order history.
#'
#' @description Wrapper for Python function forex.oanda.listorders_chart from OpenBB Terminal SDK
#'
#' @param accountID (character length 1) Oanda user account ID
#' @param order_state (character length 1) Filter orders by a specific state ("PENDING", "CANCELLED", etc.)
#' @param order_count (integer length 1) Limit the number of orders to retrieve
#' @examples
#' forex.oanda.listorders_chart(order_state='PENDING', order_count=0)
#' @export
#* @get /forex.oanda.listorders_chart
forex.oanda.listorders_chart <- function(accountID, order_state = "PENDING", order_count = 0) {
  o <- do.call(what=py$openbb$forex$oanda$listorders_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Request information on open positions.
#'
#' @description Wrapper for Python function forex.oanda.openpositions from OpenBB Terminal SDK
#'
#' @param accountID (character length 1) Oanda account ID, by default cfg.OANDA_ACCOUNT
#' @examples
#' forex.oanda.openpositions(accountID='REPLACE_ME')
#' @export
#* @get /forex.oanda.openpositions
forex.oanda.openpositions <- function(accountID = "REPLACE_ME") {
  o <- do.call(what=py$openbb$forex$oanda$openpositions, args=as.list(rlang::call_match())[-1])
  o
}


#' Get information about open positions.
#'
#' @description Wrapper for Python function forex.oanda.openpositions_chart from OpenBB Terminal SDK
#'
#' @param accountID (character length 1) Oanda user account ID
#' @export
#* @get /forex.oanda.openpositions_chart
forex.oanda.openpositions_chart <- function(accountID) {
  o <- do.call(what=py$openbb$forex$oanda$openpositions_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Request open trades data.
#'
#' @description Wrapper for Python function forex.oanda.opentrades from OpenBB Terminal SDK
#'
#' @param accountID (character length 1) Oanda account ID, by default cfg.OANDA_ACCOUNT
#' @examples
#' forex.oanda.opentrades(accountID='REPLACE_ME')
#' @export
#* @get /forex.oanda.opentrades
forex.oanda.opentrades <- function(accountID = "REPLACE_ME") {
  o <- do.call(what=py$openbb$forex$oanda$opentrades, args=as.list(rlang::call_match())[-1])
  o
}


#' View open trades.
#'
#' @description Wrapper for Python function forex.oanda.opentrades_chart from OpenBB Terminal SDK
#'
#' @param accountID (character length 1) Oanda user account ID
#' @export
#* @get /forex.oanda.opentrades_chart
forex.oanda.opentrades_chart <- function(accountID) {
  o <- do.call(what=py$openbb$forex$oanda$opentrades_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Request creation of buy/sell trade order.
#'
#' @description Wrapper for Python function forex.oanda.order from OpenBB Terminal SDK
#'
#' @param price (integer length 1) The price to set for the limit order.
#' @param units (integer length 1) The number of units to place in the order request.
#' @param accountID (character length 1) Oanda account ID, by default cfg.OANDA_ACCOUNT
#' @examples
#' forex.oanda.order(price=0, units=0, accountID='REPLACE_ME')
#' @export
#* @get /forex.oanda.order
forex.oanda.order <- function(price = 0, units = 0, instrument, accountID = "REPLACE_ME") {
  o <- do.call(what=py$openbb$forex$oanda$order, args=as.list(rlang::call_match())[-1])
  o
}


#' Create a buy/sell order.
#'
#' @description Wrapper for Python function forex.oanda.order_chart from OpenBB Terminal SDK
#'
#' @param accountID (character length 1) Oanda user account ID
#' @param instrument (character length 1) The loaded currency pair
#' @param price (integer length 1) The price to set for the limit order.
#' @param units (integer length 1) The number of units to place in the order request.
#' @examples
#' forex.oanda.order_chart(price=0, units=0)
#' @export
#* @get /forex.oanda.order_chart
forex.oanda.order_chart <- function(accountID, instrument = "", price = 0, units = 0) {
  o <- do.call(what=py$openbb$forex$oanda$order_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Request order book data for plotting.
#'
#' @description Wrapper for Python function forex.oanda.orderbook from OpenBB Terminal SDK
#'
#' @param accountID (character length 1) Oanda account ID, by default cfg.OANDA_ACCOUNT
#' @examples
#' forex.oanda.orderbook(accountID='REPLACE_ME')
#' @export
#* @get /forex.oanda.orderbook
forex.oanda.orderbook <- function(instrument, accountID = "REPLACE_ME") {
  o <- do.call(what=py$openbb$forex$oanda$orderbook, args=as.list(rlang::call_match())[-1])
  o
}


#' Plot the orderbook for the instrument if Oanda provides one.
#'
#' @description Wrapper for Python function forex.oanda.orderbook_chart from OpenBB Terminal SDK
#'
#' @param accountID (character length 1) Oanda user account ID
#' @param instrument (character length 1) The loaded currency pair
#' @export
#* @get /forex.oanda.orderbook_chart
forex.oanda.orderbook_chart <- function(accountID, instrument = "", external_axes) {
  o <- do.call(what=py$openbb$forex$oanda$orderbook_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Request information on pending orders.
#'
#' @description Wrapper for Python function forex.oanda.pending from OpenBB Terminal SDK
#'
#' @param accountID (character length 1) Oanda account ID, by default cfg.OANDA_ACCOUNT
#' @examples
#' forex.oanda.pending(accountID='REPLACE_ME')
#' @export
#* @get /forex.oanda.pending
forex.oanda.pending <- function(accountID = "REPLACE_ME") {
  o <- do.call(what=py$openbb$forex$oanda$pending, args=as.list(rlang::call_match())[-1])
  o
}


#' Get information about pending orders.
#'
#' @description Wrapper for Python function forex.oanda.pending_chart from OpenBB Terminal SDK
#'
#' @param accountID (character length 1) Oanda user account ID
#' @export
#* @get /forex.oanda.pending_chart
forex.oanda.pending_chart <- function(accountID) {
  o <- do.call(what=py$openbb$forex$oanda$pending_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Request position book data for plotting.
#'
#' @description Wrapper for Python function forex.oanda.positionbook from OpenBB Terminal SDK
#'
#' @param accountID (character length 1) Oanda account ID, by default cfg.OANDA_ACCOUNT
#' @examples
#' forex.oanda.positionbook(accountID='REPLACE_ME')
#' @export
#* @get /forex.oanda.positionbook
forex.oanda.positionbook <- function(instrument, accountID = "REPLACE_ME") {
  o <- do.call(what=py$openbb$forex$oanda$positionbook, args=as.list(rlang::call_match())[-1])
  o
}


#' Plot a position book for an instrument if Oanda provides one.
#'
#' @description Wrapper for Python function forex.oanda.positionbook_chart from OpenBB Terminal SDK
#'
#' @param accountID (character length 1) Oanda user account ID
#' @param instrument (character length 1) The loaded currency pair
#' @export
#* @get /forex.oanda.positionbook_chart
forex.oanda.positionbook_chart <- function(accountID, instrument = "", external_axes) {
  o <- do.call(what=py$openbb$forex$oanda$positionbook_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Request price for a forex pair.
#'
#' @description Wrapper for Python function forex.oanda.price from OpenBB Terminal SDK
#'
#' @param accountID (character length 1) Oanda account ID, by default cfg.OANDA_ACCOUNT
#' @examples
#' forex.oanda.price(accountID='REPLACE_ME')
#' @export
#* @get /forex.oanda.price
forex.oanda.price <- function(accountID = "REPLACE_ME", instrument) {
  o <- do.call(what=py$openbb$forex$oanda$price, args=as.list(rlang::call_match())[-1])
  o
}


#' View price for loaded currency pair.
#'
#' @description Wrapper for Python function forex.oanda.price_chart from OpenBB Terminal SDK
#'
#' @export
#* @get /forex.oanda.price_chart
forex.oanda.price_chart <- function(account, instrument) {
  o <- do.call(what=py$openbb$forex$oanda$price_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Request Oanda account summary.
#'
#' @description Wrapper for Python function forex.oanda.summary from OpenBB Terminal SDK
#'
#' @param accountID (character length 1) Oanda account ID, by default cfg.OANDA_ACCOUNT
#' @examples
#' forex.oanda.summary(accountID='REPLACE_ME')
#' @export
#* @get /forex.oanda.summary
forex.oanda.summary <- function(accountID = "REPLACE_ME") {
  o <- do.call(what=py$openbb$forex$oanda$summary, args=as.list(rlang::call_match())[-1])
  o
}


#' Print Oanda account summary.
#'
#' @description Wrapper for Python function forex.oanda.summary_chart from OpenBB Terminal SDK
#'
#' @param accountID (character length 1) Oanda user account ID
#' @export
#* @get /forex.oanda.summary_chart
forex.oanda.summary_chart <- function(accountID) {
  o <- do.call(what=py$openbb$forex$oanda$summary_chart, args=as.list(rlang::call_match())[-1])
  o
}


#'
#' @description Wrapper for Python function futures.about from OpenBB Terminal SDK
#'
#' @export
#* @get /futures.about
futures.about <- function() {
  o <- do.call(what=py$openbb$futures$about, args=as.list(rlang::call_match())[-1])
  o
}


#' Get curve futures [Source: Yahoo Finance]
#'
#' @description Wrapper for Python function futures.curve from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) symbol to get forward curve
#' @export
#* @get /futures.curve
futures.curve <- function(symbol = "") {
  o <- do.call(what=py$openbb$futures$curve, args=as.list(rlang::call_match())[-1])
  o
}


#' Display curve futures [Source: Yahoo Finance]
#'
#' @description Wrapper for Python function futures.curve_chart from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Curve future symbol to display
#' @param raw (logical length 1) Display futures timeseries in raw format
#' @param export (character length 1) Type of format to export data
#' @examples
#' futures.curve_chart(symbol='AMZN', raw=FALSE)
#' @export
#* @get /futures.curve_chart
futures.curve_chart <- function(symbol, raw = FALSE, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$futures$curve_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get historical futures data
#'
#' @description Wrapper for Python function futures.historical from OpenBB Terminal SDK
#'
#' @export
#* @get /futures.historical
futures.historical <- function(symbols, start_date, end_date, source, expiry) {
  o <- do.call(what=py$openbb$futures$historical, args=as.list(rlang::call_match())[-1])
  o
}


#' Display historical futures [Source: Yahoo Finance]
#'
#' @description Wrapper for Python function futures.historical_chart from OpenBB Terminal SDK
#'
#' @param expiry (character length 1) Future expiry date with format YYYY-MM
#' @param raw (logical length 1) Display futures timeseries in raw format
#' @param export (character length 1) Type of format to export data
#' @examples
#' futures.historical_chart(raw=FALSE)
#' @export
#* @get /futures.historical_chart
futures.historical_chart <- function(symbols, expiry = "", start_date, end_date, raw = FALSE, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$futures$historical_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get search futures [Source: Yahoo Finance]
#'
#' @description Wrapper for Python function futures.search from OpenBB Terminal SDK
#'
#' @param category (character length 1) Select the category where the future exists
#' @param exchange (character length 1) Select the exchange where the future exists
#' @param description (character length 1) Select the description where the future exists
#' @export
#* @get /futures.search
futures.search <- function(category = "", exchange = "", description = "") {
  o <- do.call(what=py$openbb$futures$search, args=as.list(rlang::call_match())[-1])
  o
}


#'
#' @description Wrapper for Python function keys.about from OpenBB Terminal SDK
#'
#' @export
#* @get /keys.about
keys.about <- function() {
  o <- do.call(what=py$openbb$keys$about, args=as.list(rlang::call_match())[-1])
  o
}


#' Set Alpha Vantage key
#'
#' @description Wrapper for Python function keys.av from OpenBB Terminal SDK
#'
#' @param key (character length 1) API key
#' @param persist (logical length 1) If False, api key change will be contained to where it was changed. For example, a Jupyter notebook session.
#'     If True, api key change will be global, i.e. it will affect terminal environment variables.
#'     By default, False.
#' @param show_output (logical length 1) Display status string or not. By default, False.
#' @examples
#' keys.av(persist=FALSE, show_output=FALSE)
#' @export
#* @get /keys.av
keys.av <- function(key, persist = FALSE, show_output = FALSE) {
  o <- do.call(what=py$openbb$keys$av, args=as.list(rlang::call_match())[-1])
  o
}


#' Set Binance key
#'
#' @description Wrapper for Python function keys.binance from OpenBB Terminal SDK
#'
#' @param key (character length 1) API key
#' @param secret (character length 1) API secret
#' @param persist (logical length 1) If False, api key change will be contained to where it was changed. For example, a Jupyter notebook session.
#'     If True, api key change will be global, i.e. it will affect terminal environment variables.
#'     By default, False.
#' @param show_output (logical length 1) Display status string or not. By default, False.
#' @examples
#' keys.binance(persist=FALSE, show_output=FALSE)
#' @export
#* @get /keys.binance
keys.binance <- function(key, secret, persist = FALSE, show_output = FALSE) {
  o <- do.call(what=py$openbb$keys$binance, args=as.list(rlang::call_match())[-1])
  o
}


#' Set Bitquery key
#'
#' @description Wrapper for Python function keys.bitquery from OpenBB Terminal SDK
#'
#' @param key (character length 1) API key
#' @param persist (logical length 1) If False, api key change will be contained to where it was changed. For example, a Jupyter notebook session.
#'     If True, api key change will be global, i.e. it will affect terminal environment variables.
#'     By default, False.
#' @param show_output (logical length 1) Display status string or not. By default, False.
#' @examples
#' keys.bitquery(persist=FALSE, show_output=FALSE)
#' @export
#* @get /keys.bitquery
keys.bitquery <- function(key, persist = FALSE, show_output = FALSE) {
  o <- do.call(what=py$openbb$keys$bitquery, args=as.list(rlang::call_match())[-1])
  o
}


#' Set Coinmarketcap key
#'
#' @description Wrapper for Python function keys.cmc from OpenBB Terminal SDK
#'
#' @param key (character length 1) API key
#' @param persist (logical length 1) If False, api key change will be contained to where it was changed. For example, a Jupyter notebook session.
#'     If True, api key change will be global, i.e. it will affect terminal environment variables.
#'     By default, False.
#' @param show_output (logical length 1) Display status string or not. By default, False.
#' @examples
#' keys.cmc(persist=FALSE, show_output=FALSE)
#' @export
#* @get /keys.cmc
keys.cmc <- function(key, persist = FALSE, show_output = FALSE) {
  o <- do.call(what=py$openbb$keys$cmc, args=as.list(rlang::call_match())[-1])
  o
}


#' Set Coinbase key
#'
#' @description Wrapper for Python function keys.coinbase from OpenBB Terminal SDK
#'
#' @param key (character length 1) API key
#' @param secret (character length 1) API secret
#' @param passphrase (character length 1) Account passphrase
#' @param persist (logical length 1) If False, api key change will be contained to where it was changed. For example, a Jupyter notebook session.
#'     If True, api key change will be global, i.e. it will affect terminal environment variables.
#'     By default, False.
#' @param show_output (logical length 1) Display status string or not. By default, False.
#' @examples
#' keys.coinbase(persist=FALSE, show_output=FALSE)
#' @export
#* @get /keys.coinbase
keys.coinbase <- function(key, secret, passphrase, persist = FALSE, show_output = FALSE) {
  o <- do.call(what=py$openbb$keys$coinbase, args=as.list(rlang::call_match())[-1])
  o
}


#' Set Coinglass key.
#'
#' @description Wrapper for Python function keys.coinglass from OpenBB Terminal SDK
#'
#' @param key (character length 1) API key
#' @param persist (logical length 1) If False, api key change will be contained to where it was changed. For example, a Jupyter notebook session.
#'     If True, api key change will be global, i.e. it will affect terminal environment variables.
#'     By default, False.
#' @param show_output (logical length 1) Display status string or not. By default, False.
#' @examples
#' keys.coinglass(persist=FALSE, show_output=FALSE)
#' @export
#* @get /keys.coinglass
keys.coinglass <- function(key, persist = FALSE, show_output = FALSE) {
  o <- do.call(what=py$openbb$keys$coinglass, args=as.list(rlang::call_match())[-1])
  o
}


#' Set Cpanic key.
#'
#' @description Wrapper for Python function keys.cpanic from OpenBB Terminal SDK
#'
#' @param key (character length 1) API key
#' @param persist (logical length 1) If False, api key change will be contained to where it was changed. For example, a Jupyter notebook session.
#'     If True, api key change will be global, i.e. it will affect terminal environment variables.
#'     By default, False.
#' @param show_output (logical length 1) Display status string or not. By default, False.
#' @examples
#' keys.cpanic(persist=FALSE, show_output=FALSE)
#' @export
#* @get /keys.cpanic
keys.cpanic <- function(key, persist = FALSE, show_output = FALSE) {
  o <- do.call(what=py$openbb$keys$cpanic, args=as.list(rlang::call_match())[-1])
  o
}


#' Set DataBento key
#'
#' @description Wrapper for Python function keys.databento from OpenBB Terminal SDK
#'
#' @param key (character length 1) API key
#' @param persist (logical length 1) If False, api key change will be contained to where it was changed. For example, a Jupyter notebook session.
#'     If True, api key change will be global, i.e. it will affect terminal environment variables.
#'     By default, False.
#' @param show_output (logical length 1) Display status string or not. By default, False.
#' @export
#* @get /keys.databento
keys.databento <- function(key, persist = FALSE, show_output = FALSE) {
  o <- do.call(what=py$openbb$keys$databento, args=as.list(rlang::call_match())[-1])
  o
}


#' Set Degiro key
#'
#' @description Wrapper for Python function keys.degiro from OpenBB Terminal SDK
#'
#' @param username (character length 1) User username
#' @param password (character length 1) User password
#' @param secret (character length 1) User secret
#' @param persist (logical length 1) If False, api key change will be contained to where it was changed. For example, a Jupyter notebook session.
#'     If True, api key change will be global, i.e. it will affect terminal environment variables.
#'     By default, False.
#' @param show_output (logical length 1) Display status string or not. By default, False.
#' @examples
#' keys.degiro(persist=FALSE, show_output=FALSE)
#' @export
#* @get /keys.degiro
keys.degiro <- function(username, password, secret = "", persist = FALSE, show_output = FALSE) {
  o <- do.call(what=py$openbb$keys$degiro, args=as.list(rlang::call_match())[-1])
  o
}


#' Set Eodhd key.
#'
#' @description Wrapper for Python function keys.eodhd from OpenBB Terminal SDK
#'
#' @param key (character length 1) API key
#' @param persist (logical length 1) If False, api key change will be contained to where it was changed. For example, a Jupyter notebook session.
#'     If True, api key change will be global, i.e. it will affect terminal environment variables.
#'     By default, False.
#' @param show_output (logical length 1) Display status string or not. By default, False.
#' @examples
#' keys.eodhd(persist=FALSE, show_output=FALSE)
#' @export
#* @get /keys.eodhd
keys.eodhd <- function(key, persist = FALSE, show_output = FALSE) {
  o <- do.call(what=py$openbb$keys$eodhd, args=as.list(rlang::call_match())[-1])
  o
}


#' Set Ethplorer key.
#'
#' @description Wrapper for Python function keys.ethplorer from OpenBB Terminal SDK
#'
#' @param key (character length 1) API key
#' @param persist (logical length 1) If False, api key change will be contained to where it was changed. For example, a Jupyter notebook session.
#'     If True, api key change will be global, i.e. it will affect terminal environment variables.
#'     By default, False.
#' @param show_output (logical length 1) Display status string or not. By default, False.
#' @examples
#' keys.ethplorer(persist=FALSE, show_output=FALSE)
#' @export
#* @get /keys.ethplorer
keys.ethplorer <- function(key, persist = FALSE, show_output = FALSE) {
  o <- do.call(what=py$openbb$keys$ethplorer, args=as.list(rlang::call_match())[-1])
  o
}


#' Set Finnhub key
#'
#' @description Wrapper for Python function keys.finnhub from OpenBB Terminal SDK
#'
#' @param key (character length 1) API key
#' @param persist (logical length 1) If False, api key change will be contained to where it was changed. For example, a Jupyter notebook session.
#'     If True, api key change will be global, i.e. it will affect terminal environment variables.
#'     By default, False.
#' @param show_output (logical length 1) Display status string or not. By default, False.
#' @examples
#' keys.finnhub(persist=FALSE, show_output=FALSE)
#' @export
#* @get /keys.finnhub
keys.finnhub <- function(key, persist = FALSE, show_output = FALSE) {
  o <- do.call(what=py$openbb$keys$finnhub, args=as.list(rlang::call_match())[-1])
  o
}


#' Set Financial Modeling Prep key
#'
#' @description Wrapper for Python function keys.fmp from OpenBB Terminal SDK
#'
#' @param key (character length 1) API key
#' @param persist (logical length 1) If False, api key change will be contained to where it was changed. For example, a Jupyter notebook session.
#'     If True, api key change will be global, i.e. it will affect terminal environment variables.
#'     By default, False.
#' @param show_output (logical length 1) Display status string or not. By default, False.
#' @examples
#' keys.fmp(persist=FALSE, show_output=FALSE)
#' @export
#* @get /keys.fmp
keys.fmp <- function(key, persist = FALSE, show_output = FALSE) {
  o <- do.call(what=py$openbb$keys$fmp, args=as.list(rlang::call_match())[-1])
  o
}


#' Set FRED key
#'
#' @description Wrapper for Python function keys.fred from OpenBB Terminal SDK
#'
#' @param key (character length 1) API key
#' @param persist (logical length 1) If False, api key change will be contained to where it was changed. For example, a Jupyter notebook session.
#'     If True, api key change will be global, i.e. it will affect terminal environment variables.
#'     By default, False.
#' @param show_output (logical length 1) Display status string or not. By default, False.
#' @examples
#' keys.fred(persist=FALSE, show_output=FALSE)
#' @export
#* @get /keys.fred
keys.fred <- function(key, persist = FALSE, show_output = FALSE) {
  o <- do.call(what=py$openbb$keys$fred, args=as.list(rlang::call_match())[-1])
  o
}


#' Get info on available APIs to use in set_keys.
#'
#' @description Wrapper for Python function keys.get_keys_info from OpenBB Terminal SDK
#'
#' @export
#* @get /keys.get_keys_info
keys.get_keys_info <- function() {
  o <- do.call(what=py$openbb$keys$get_keys_info, args=as.list(rlang::call_match())[-1])
  o
}


#' Set GitHub key.
#'
#' @description Wrapper for Python function keys.github from OpenBB Terminal SDK
#'
#' @param key (character length 1) API key
#' @param persist (logical length 1) If False, api key change will be contained to where it was changed. For example, a Jupyter notebook session.
#'     If True, api key change will be global, i.e. it will affect terminal environment variables.
#'     By default, False.
#' @param show_output (logical length 1) Display status string or not. By default, False.
#' @examples
#' keys.github(persist=FALSE, show_output=FALSE)
#' @export
#* @get /keys.github
keys.github <- function(key, persist = FALSE, show_output = FALSE) {
  o <- do.call(what=py$openbb$keys$github, args=as.list(rlang::call_match())[-1])
  o
}


#' Set Glassnode key.
#'
#' @description Wrapper for Python function keys.glassnode from OpenBB Terminal SDK
#'
#' @param key (character length 1) API key
#' @param persist (logical length 1) If False, api key change will be contained to where it was changed. For example, a Jupyter notebook session.
#'     If True, api key change will be global, i.e. it will affect terminal environment variables.
#'     By default, False.
#' @param show_output (logical length 1) Display status string or not. By default, False.
#' @examples
#' keys.glassnode(persist=FALSE, show_output=FALSE)
#' @export
#* @get /keys.glassnode
keys.glassnode <- function(key, persist = FALSE, show_output = FALSE) {
  o <- do.call(what=py$openbb$keys$glassnode, args=as.list(rlang::call_match())[-1])
  o
}


#' Set Messari key.
#'
#' @description Wrapper for Python function keys.messari from OpenBB Terminal SDK
#'
#' @param key (character length 1) API key
#' @param persist (logical length 1) If False, api key change will be contained to where it was changed. For example, a Jupyter notebook session.
#'     If True, api key change will be global, i.e. it will affect terminal environment variables.
#'     By default, False.
#' @param show_output (logical length 1) Display status string or not. By default, False.
#' @examples
#' keys.messari(persist=FALSE, show_output=FALSE)
#' @export
#* @get /keys.messari
keys.messari <- function(key, persist = FALSE, show_output = FALSE) {
  o <- do.call(what=py$openbb$keys$messari, args=as.list(rlang::call_match())[-1])
  o
}


#' Get currently set API keys.
#'
#' @description Wrapper for Python function keys.mykeys from OpenBB Terminal SDK
#'
#' @param show (logical length 1) Flag to choose whether to show actual keys or not.
#'     By default, False.
#' @examples
#' keys.mykeys(show=FALSE)
#' @export
#* @get /keys.mykeys
keys.mykeys <- function(show = FALSE) {
  o <- do.call(what=py$openbb$keys$mykeys, args=as.list(rlang::call_match())[-1])
  o
}


#' Set News key
#'
#' @description Wrapper for Python function keys.news from OpenBB Terminal SDK
#'
#' @param key (character length 1) API key
#' @param persist (logical length 1) If False, api key change will be contained to where it was changed. For example, a Jupyter notebook session.
#'     If True, api key change will be global, i.e. it will affect terminal environment variables.
#'     By default, False.
#' @param show_output (logical length 1) Display status string or not. By default, False.
#' @examples
#' keys.news(persist=FALSE, show_output=FALSE)
#' @export
#* @get /keys.news
keys.news <- function(key, persist = FALSE, show_output = FALSE) {
  o <- do.call(what=py$openbb$keys$news, args=as.list(rlang::call_match())[-1])
  o
}


#' Set Oanda key
#'
#' @description Wrapper for Python function keys.oanda from OpenBB Terminal SDK
#'
#' @param account (character length 1) User account
#' @param access_token (character length 1) User token
#' @param account_type (character length 1) User account type
#' @param persist (logical length 1) If False, api key change will be contained to where it was changed. For example, a Jupyter notebook session.
#'     If True, api key change will be global, i.e. it will affect terminal environment variables.
#'     By default, False.
#' @param show_output (logical length 1) Display status string or not. By default, False.
#' @examples
#' keys.oanda(persist=FALSE, show_output=FALSE)
#' @export
#* @get /keys.oanda
keys.oanda <- function(account, access_token, account_type = "", persist = FALSE, show_output = FALSE) {
  o <- do.call(what=py$openbb$keys$oanda, args=as.list(rlang::call_match())[-1])
  o
}


#' Set OpenBB Personal Access Token.
#'
#' @description Wrapper for Python function keys.openbb from OpenBB Terminal SDK
#'
#' @param key (character length 1) Personal Access Token
#' @param persist (logical length 1) If False, api key change will be contained to where it was changed. For example, a Jupyter notebook session.
#'     If True, api key change will be global, i.e. it will affect terminal environment variables.
#'     By default, False.
#' @param show_output (logical length 1) Display status string or not. By default, False.
#' @export
#* @get /keys.openbb
keys.openbb <- function(key, persist = FALSE, show_output = FALSE) {
  o <- do.call(what=py$openbb$keys$openbb, args=as.list(rlang::call_match())[-1])
  o
}


#' Set Polygon key
#'
#' @description Wrapper for Python function keys.polygon from OpenBB Terminal SDK
#'
#' @param key (character length 1) API key
#' @param persist (logical length 1) If False, api key change will be contained to where it was changed. For example, a Jupyter notebook session.
#'     If True, api key change will be global, i.e. it will affect terminal environment variables.
#'     By default, False.
#' @param show_output (logical length 1) Display status string or not. By default, False.
#' @examples
#' keys.polygon(persist=FALSE, show_output=FALSE)
#' @export
#* @get /keys.polygon
keys.polygon <- function(key, persist = FALSE, show_output = FALSE) {
  o <- do.call(what=py$openbb$keys$polygon, args=as.list(rlang::call_match())[-1])
  o
}


#' Set Quandl key
#'
#' @description Wrapper for Python function keys.quandl from OpenBB Terminal SDK
#'
#' @param key (character length 1) API key
#' @param persist (logical length 1) If False, api key change will be contained to where it was changed. For example, a Jupyter notebook session.
#'     If True, api key change will be global, i.e. it will affect terminal environment variables.
#'     By default, False.
#' @param show_output (logical length 1) Display status string or not. By default, False.
#' @examples
#' keys.quandl(persist=FALSE, show_output=FALSE)
#' @export
#* @get /keys.quandl
keys.quandl <- function(key, persist = FALSE, show_output = FALSE) {
  o <- do.call(what=py$openbb$keys$quandl, args=as.list(rlang::call_match())[-1])
  o
}


#' Set Reddit key
#'
#' @description Wrapper for Python function keys.reddit from OpenBB Terminal SDK
#'
#' @param client_id (character length 1) Client ID
#' @param client_secret (character length 1) Client secret
#' @param password (character length 1) User password
#' @param username (character length 1) User username
#' @param useragent (character length 1) User useragent
#' @param persist (logical length 1) If False, api key change will be contained to where it was changed. For example, a Jupyter notebook session.
#'     If True, api key change will be global, i.e. it will affect terminal environment variables.
#'     By default, False.
#' @param show_output (logical length 1) Display status string or not. By default, False.
#' @examples
#' keys.reddit(persist=FALSE, show_output=FALSE)
#' @export
#* @get /keys.reddit
keys.reddit <- function(client_id, client_secret, password, username, useragent, persist = FALSE, show_output = FALSE) {
  o <- do.call(what=py$openbb$keys$reddit, args=as.list(rlang::call_match())[-1])
  o
}


#' Set Robinhood key
#'
#' @description Wrapper for Python function keys.rh from OpenBB Terminal SDK
#'
#' @param username (character length 1) User username
#' @param password (character length 1) User password
#' @param persist (logical length 1) If False, api key change will be contained to where it was changed. For example, a Jupyter notebook session.
#'     If True, api key change will be global, i.e. it will affect terminal environment variables.
#'     By default, False.
#' @param show_output (logical length 1) Display status string or not. By default, False.
#' @examples
#' keys.rh(persist=FALSE, show_output=FALSE)
#' @export
#* @get /keys.rh
keys.rh <- function(username, password, persist = FALSE, show_output = FALSE) {
  o <- do.call(what=py$openbb$keys$rh, args=as.list(rlang::call_match())[-1])
  o
}


#' Set Santiment key.
#'
#' @description Wrapper for Python function keys.santiment from OpenBB Terminal SDK
#'
#' @param key (character length 1) API key
#' @param persist (logical length 1) If False, api key change will be contained to where it was changed. For example, a Jupyter notebook session.
#'     If True, api key change will be global, i.e. it will affect terminal environment variables.
#'     By default, False.
#' @param show_output (logical length 1) Display status string or not. By default, False.
#' @examples
#' keys.santiment(persist=FALSE, show_output=FALSE)
#' @export
#* @get /keys.santiment
keys.santiment <- function(key, persist = FALSE, show_output = FALSE) {
  o <- do.call(what=py$openbb$keys$santiment, args=as.list(rlang::call_match())[-1])
  o
}


#' Set API keys in bundle.
#'
#' @description Wrapper for Python function keys.set_keys from OpenBB Terminal SDK
#'
#' @param persist (logical length 1) If False, api key change will be contained to where it was changed. For example, a Jupyter notebook session.
#'     If True, api key change will be global, i.e. it will affect terminal environment variables.
#'     By default, False.
#' @param show_output (logical length 1) Display status string or not. By default, False.
#' @examples
#' keys.set_keys(persist=FALSE, show_output=FALSE)
#' @export
#* @get /keys.set_keys
keys.set_keys <- function(keys_dict, persist = FALSE, show_output = FALSE) {
  o <- do.call(what=py$openbb$keys$set_keys, args=as.list(rlang::call_match())[-1])
  o
}


#' Set Shroom key
#'
#' @description Wrapper for Python function keys.shroom from OpenBB Terminal SDK
#'
#' @param key (character length 1) API key
#' @param persist (logical length 1) If False, api key change will be contained to where it was changed. For example, a Jupyter notebook session.
#'     If True, api key change will be global, i.e. it will affect terminal environment variables.
#'     By default, False.
#' @param show_output (logical length 1) Display status string or not. By default, False.
#' @examples
#' keys.shroom(persist=FALSE, show_output=FALSE)
#' @export
#* @get /keys.shroom
keys.shroom <- function(key, persist = FALSE, show_output = FALSE) {
  o <- do.call(what=py$openbb$keys$shroom, args=as.list(rlang::call_match())[-1])
  o
}


#' Set Smartstake key.
#'
#' @description Wrapper for Python function keys.smartstake from OpenBB Terminal SDK
#'
#' @param key (character length 1) API key
#' @param access_token (character length 1) API token
#' @param persist (logical length 1) If False, api key change will be contained to where it was changed. For example, a Jupyter notebook session.
#'     If True, api key change will be global, i.e. it will affect terminal environment variables.
#'     By default, False.
#' @param show_output (logical length 1) Display status string or not. By default, False.
#' @examples
#' keys.smartstake(persist=FALSE, show_output=FALSE)
#' @export
#* @get /keys.smartstake
keys.smartstake <- function(key, access_token, persist = FALSE, show_output = FALSE) {
  o <- do.call(what=py$openbb$keys$smartstake, args=as.list(rlang::call_match())[-1])
  o
}


#' Set Stocksera key.
#'
#' @description Wrapper for Python function keys.stocksera from OpenBB Terminal SDK
#'
#' @param key (character length 1) API key
#' @param persist (logical length 1) If False, api key change will be contained to where it was changed. For example, a Jupyter notebook session.
#'     If True, api key change will be global, i.e. it will affect terminal environment variables.
#'     By default, False.
#' @param show_output (logical length 1) Display status string or not. By default, False.
#' @examples
#' keys.stocksera(persist=FALSE, show_output=FALSE)
#' @export
#* @get /keys.stocksera
keys.stocksera <- function(key, persist = FALSE, show_output = FALSE) {
  o <- do.call(what=py$openbb$keys$stocksera, args=as.list(rlang::call_match())[-1])
  o
}


#' Set Token Terminal key.
#'
#' @description Wrapper for Python function keys.tokenterminal from OpenBB Terminal SDK
#'
#' @param key (character length 1) API key
#' @param persist (logical length 1) If False, api key change will be contained to where it was changed. For example, a Jupyter notebook session.
#'     If True, api key change will be global, i.e. it will affect terminal environment variables.
#'     By default, False.
#' @param show_output (logical length 1) Display status string or not. By default, False.
#' @examples
#' keys.tokenterminal(persist=FALSE, show_output=FALSE)
#' @export
#* @get /keys.tokenterminal
keys.tokenterminal <- function(key, persist = FALSE, show_output = FALSE) {
  o <- do.call(what=py$openbb$keys$tokenterminal, args=as.list(rlang::call_match())[-1])
  o
}


#' Set Tradier key
#'
#' @description Wrapper for Python function keys.tradier from OpenBB Terminal SDK
#'
#' @param key (character length 1) API key
#' @param persist (logical length 1) If False, api key change will be contained to where it was changed. For example, a Jupyter notebook session.
#'     If True, api key change will be global, i.e. it will affect terminal environment variables.
#'     By default, False.
#' @param show_output (logical length 1) Display status string or not. By default, False.
#' @examples
#' keys.tradier(persist=FALSE, show_output=FALSE)
#' @export
#* @get /keys.tradier
keys.tradier <- function(key, persist = FALSE, show_output = FALSE) {
  o <- do.call(what=py$openbb$keys$tradier, args=as.list(rlang::call_match())[-1])
  o
}


#' Set Twitter key
#'
#' @description Wrapper for Python function keys.twitter from OpenBB Terminal SDK
#'
#' @param access_token (character length 1) API token
#' @param persist (logical length 1) If False, api key change will be contained to where it was changed. For example, a Jupyter notebook session.
#'     If True, api key change will be global, i.e. it will affect terminal environment variables.
#'     By default, False.
#' @param show_output (logical length 1) Display status string or not. By default, False.
#' @examples
#' keys.twitter(persist=FALSE, show_output=FALSE)
#' @export
#* @get /keys.twitter
keys.twitter <- function(access_token, persist = FALSE, show_output = FALSE) {
  o <- do.call(what=py$openbb$keys$twitter, args=as.list(rlang::call_match())[-1])
  o
}


#' Set Walert key
#'
#' @description Wrapper for Python function keys.walert from OpenBB Terminal SDK
#'
#' @param key (character length 1) API key
#' @param persist (logical length 1) If False, api key change will be contained to where it was changed. For example, a Jupyter notebook session.
#'     If True, api key change will be global, i.e. it will affect terminal environment variables.
#'     By default, False.
#' @param show_output (logical length 1) Display status string or not. By default, False.
#' @examples
#' keys.walert(persist=FALSE, show_output=FALSE)
#' @export
#* @get /keys.walert
keys.walert <- function(key, persist = FALSE, show_output = FALSE) {
  o <- do.call(what=py$openbb$keys$walert, args=as.list(rlang::call_match())[-1])
  o
}


#'
#' @description Wrapper for Python function portfolio.about from OpenBB Terminal SDK
#'
#' @export
#* @get /portfolio.about
portfolio.about <- function() {
  o <- do.call(what=py$openbb$portfolio$about, args=as.list(rlang::call_match())[-1])
  o
}


#' Load benchmark into portfolio
#'
#' @description Wrapper for Python function portfolio.bench from OpenBB Terminal SDK
#'
#' @param portfolio_engine (Python type: openbb_terminal.portfolio.portfolio_engine.PortfolioEngine) PortfolioEngine class instance, this will hold transactions and perform calculations.
#'     Use `portfolio.load` to create a PortfolioEngine.
#' @param symbol (character length 1) Benchmark symbol to download data
#' @param full_shares (logical length 1) Whether to mimic the portfolio trades exactly (partial shares) or round down the
#'     quantity to the nearest number
#' @examples
#' portfolio.bench(symbol='AMZN', full_shares=FALSE)
#' @export
#* @get /portfolio.bench
portfolio.bench <- function(portfolio_engine, symbol, full_shares = FALSE) {
  o <- do.call(what=py$openbb$portfolio$bench, args=as.list(rlang::call_match())[-1])
  o
}


#' Display daily returns
#'
#' @description Wrapper for Python function portfolio.distr from OpenBB Terminal SDK
#'
#' @param portfolio_engine (Python type: openbb_terminal.portfolio.portfolio_engine.PortfolioEngine) PortfolioEngine class instance, this will hold transactions and perform calculations.
#'     Use `portfolio.load` to create a PortfolioEngine.
#' @param window (character length 1) interval to compare cumulative returns and benchmark
#' @examples
#' portfolio.distr(window='all')
#' @export
#* @get /portfolio.distr
portfolio.distr <- function(portfolio_engine, window = "all") {
  o <- do.call(what=py$openbb$portfolio$distr, args=as.list(rlang::call_match())[-1])
  o
}


#' Display daily returns
#'
#' @description Wrapper for Python function portfolio.distr_chart from OpenBB Terminal SDK
#'
#' @param raw (logical length 1) Display raw data from cumulative return
#' @param export (character length 1) Export certain type of data
#' @export
#* @get /portfolio.distr_chart
portfolio.distr_chart <- function(portfolio_engine, window = "all", raw = FALSE, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$portfolio$distr_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get daily returns
#'
#' @description Wrapper for Python function portfolio.dret from OpenBB Terminal SDK
#'
#' @param portfolio_engine (Python type: openbb_terminal.portfolio.portfolio_engine.PortfolioEngine) PortfolioEngine class instance, this will hold transactions and perform calculations.
#'     Use `portfolio.load` to create a PortfolioEngine.
#' @param window (character length 1) interval to compare cumulative returns and benchmark
#' @examples
#' portfolio.dret(window='all')
#' @export
#* @get /portfolio.dret
portfolio.dret <- function(portfolio_engine, window = "all") {
  o <- do.call(what=py$openbb$portfolio$dret, args=as.list(rlang::call_match())[-1])
  o
}


#' Display daily returns
#'
#' @description Wrapper for Python function portfolio.dret_chart from OpenBB Terminal SDK
#'
#' @param portfolio_engine (Python type: openbb_terminal.portfolio.portfolio_engine.PortfolioEngine) PortfolioEngine class instance, this will hold transactions and perform calculations.
#'     Use `portfolio.load` to create a PortfolioEngine.
#' @param window (character length 1) interval to compare cumulative returns and benchmark
#' @param raw (logical length 1) Display raw data from cumulative return
#' @param limit (integer length 1) Last daily returns to display
#' @param export (character length 1) Export certain type of data
#' @examples
#' portfolio.dret_chart(window='all', limit=10)
#' @export
#* @get /portfolio.dret_chart
portfolio.dret_chart <- function(portfolio_engine, window = "all", raw = FALSE, limit = 10, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$portfolio$dret_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get portfolio expected shortfall
#'
#' @description Wrapper for Python function portfolio.es from OpenBB Terminal SDK
#'
#' @param portfolio_engine (Python type: openbb_terminal.portfolio.portfolio_engine.PortfolioEngine) PortfolioEngine class instance, this will hold transactions and perform calculations.
#'     Use `portfolio.load` to create a PortfolioEngine.
#' @param use_mean (logical length 1) if one should use the data mean return
#' @param distribution (character length 1) choose distribution to use: logistic, laplace, normal
#' @param percentile (numeric length 1) es percentile (%)
#' @examples
#' portfolio.es(distribution='normal', percentile=99.9)
#' @export
#* @get /portfolio.es
portfolio.es <- function(portfolio_engine, use_mean = FALSE, distribution = "normal", percentile = 99.9) {
  o <- do.call(what=py$openbb$portfolio$es, args=as.list(rlang::call_match())[-1])
  o
}


#' Get holdings of assets (in percentage)
#'
#' @description Wrapper for Python function portfolio.holdp from OpenBB Terminal SDK
#'
#' @param portfolio_engine (Python type: openbb_terminal.portfolio.portfolio_engine.PortfolioEngine) PortfolioEngine class instance, this will hold transactions and perform calculations.
#'     Use `portfolio.load` to create a PortfolioEngine.
#' @export
#* @get /portfolio.holdp
portfolio.holdp <- function(portfolio_engine) {
  o <- do.call(what=py$openbb$portfolio$holdp, args=as.list(rlang::call_match())[-1])
  o
}


#' Display holdings of assets (in percentage)
#'
#' @description Wrapper for Python function portfolio.holdp_chart from OpenBB Terminal SDK
#'
#' @param portfolio_engine (Python type: openbb_terminal.portfolio.portfolio_engine.PortfolioEngine) PortfolioEngine class instance, this will hold transactions and perform calculations.
#'     Use `portfolio.load` to create a PortfolioEngine.
#' @param unstack (logical length 1) Individual assets over time
#' @param raw (logical length 1) To display raw data
#' @param limit (integer length 1) Number of past market days to display holdings
#' @param export (character length 1) Format to export plot
#' @examples
#' portfolio.holdp_chart(unstack=FALSE, raw=FALSE, limit=10)
#' @export
#* @get /portfolio.holdp_chart
portfolio.holdp_chart <- function(portfolio_engine, unstack = FALSE, raw = FALSE, limit = 10, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$portfolio$holdp_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get holdings of assets (absolute value)
#'
#' @description Wrapper for Python function portfolio.holdv from OpenBB Terminal SDK
#'
#' @param portfolio_engine (Python type: openbb_terminal.portfolio.portfolio_engine.PortfolioEngine) PortfolioEngine class instance, this will hold transactions and perform calculations.
#'     Use `portfolio.load` to create a PortfolioEngine.
#' @export
#* @get /portfolio.holdv
portfolio.holdv <- function(portfolio_engine) {
  o <- do.call(what=py$openbb$portfolio$holdv, args=as.list(rlang::call_match())[-1])
  o
}


#' Display holdings of assets (absolute value)
#'
#' @description Wrapper for Python function portfolio.holdv_chart from OpenBB Terminal SDK
#'
#' @param portfolio_engine (Python type: openbb_terminal.portfolio.portfolio_engine.PortfolioEngine) PortfolioEngine class instance, this will hold transactions and perform calculations.
#'     Use `portfolio.load` to create a PortfolioEngine.
#' @param unstack (logical length 1) Individual assets over time
#' @param raw (logical length 1) To display raw data
#' @param limit (integer length 1) Number of past market days to display holdings
#' @param export (character length 1) Format to export plot
#' @examples
#' portfolio.holdv_chart(unstack=FALSE, raw=FALSE, limit=10)
#' @export
#* @get /portfolio.holdv_chart
portfolio.holdv_chart <- function(portfolio_engine, unstack = FALSE, raw = FALSE, limit = 10, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$portfolio$holdv_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get PortfolioEngine object
#'
#' @description Wrapper for Python function portfolio.load from OpenBB Terminal SDK
#'
#' @param transactions_file_path (character length 1) Path to transactions file
#' @param benchmark_symbol (character length 1) Benchmark ticker to download data
#' @param full_shares (logical length 1) Whether to mimic the portfolio trades exactly (partial shares) or round down the
#'     quantity to the nearest number
#' @param risk_free_rate (numeric length 1) Risk free rate in float format
#' @examples
#' portfolio.load(benchmark_symbol='SPY', full_shares=FALSE, risk_free_rate=0)
#' @export
#* @get /portfolio.load
portfolio.load <- function(transactions_file_path, benchmark_symbol = "SPY", full_shares = FALSE, risk_free_rate = 0) {
  o <- do.call(what=py$openbb$portfolio$load, args=as.list(rlang::call_match())[-1])
  o
}


#' Calculate the drawdown (MDD) of historical series.  Note that the calculation is done
#'
#' @description Wrapper for Python function portfolio.maxdd from OpenBB Terminal SDK
#'
#' @param is_returns (logical length 1) Flag to indicate inputs are returns
#' @examples
#' portfolio.maxdd(is_returns=FALSE)
#' @export
#* @get /portfolio.maxdd
portfolio.maxdd <- function(portfolio_engine, is_returns = FALSE) {
  o <- do.call(what=py$openbb$portfolio$maxdd, args=as.list(rlang::call_match())[-1])
  o
}


#' Display maximum drawdown curve
#'
#' @description Wrapper for Python function portfolio.maxdd_chart from OpenBB Terminal SDK
#'
#' @param export (character length 1) Format to export data
#' @export
#* @get /portfolio.maxdd_chart
portfolio.maxdd_chart <- function(portfolio_engine, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$portfolio$maxdd_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get monthly returns
#'
#' @description Wrapper for Python function portfolio.mret from OpenBB Terminal SDK
#'
#' @param portfolio_engine (Python type: openbb_terminal.portfolio.portfolio_engine.PortfolioEngine) PortfolioEngine class instance, this will hold transactions and perform calculations.
#'     Use `portfolio.load` to create a PortfolioEngine.
#' @param window (character length 1) interval to compare cumulative returns and benchmark
#' @examples
#' portfolio.mret(window='all')
#' @export
#* @get /portfolio.mret
portfolio.mret <- function(portfolio_engine, window = "all") {
  o <- do.call(what=py$openbb$portfolio$mret, args=as.list(rlang::call_match())[-1])
  o
}


#' Display monthly returns
#'
#' @description Wrapper for Python function portfolio.mret_chart from OpenBB Terminal SDK
#'
#' @param portfolio_engine (Python type: openbb_terminal.portfolio.portfolio_engine.PortfolioEngine) PortfolioEngine class instance, this will hold transactions and perform calculations.
#'     Use `portfolio.load` to create a PortfolioEngine.
#' @param window (character length 1) interval to compare cumulative returns and benchmark
#' @param instrument (character length 1) Display raw data from cumulative return, default is showing both the portfolio and benchmark in one table
#' @param show_vals (logical length 1) Show values on heatmap
#' @param export (character length 1) Export certain type of data
#' @examples
#' portfolio.mret_chart(window='all')
#' @export
#* @get /portfolio.mret_chart
portfolio.mret_chart <- function(portfolio_engine, window = "all", instrument = "both", graph = FALSE, show_vals = FALSE, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$portfolio$mret_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get omega ratio
#'
#' @description Wrapper for Python function portfolio.om from OpenBB Terminal SDK
#'
#' @param portfolio_engine (Python type: openbb_terminal.portfolio.portfolio_engine.PortfolioEngine) PortfolioEngine class instance, this will hold transactions and perform calculations.
#'     Use `portfolio.load` to create a PortfolioEngine.
#' @param threshold_start (numeric length 1) annualized target return threshold start of plotted threshold range
#' @param threshold_end (numeric length 1) annualized target return threshold end of plotted threshold range
#' @examples
#' portfolio.om(threshold_start=0, threshold_end=1.5)
#' @export
#* @get /portfolio.om
portfolio.om <- function(portfolio_engine, threshold_start = 0, threshold_end = 1.5) {
  o <- do.call(what=py$openbb$portfolio$om, args=as.list(rlang::call_match())[-1])
  o
}


#' Display omega ratio
#'
#' @description Wrapper for Python function portfolio.om_chart from OpenBB Terminal SDK
#'
#' @param portfolio_engine (Python type: openbb_terminal.portfolio.portfolio_engine.PortfolioEngine) PortfolioEngine class instance, this will hold transactions and perform calculations.
#'     Use `portfolio.load` to create a PortfolioEngine.
#' @param threshold_start (numeric length 1) annualized target return threshold start of plotted threshold range
#' @param threshold_end (numeric length 1) annualized target return threshold end of plotted threshold range
#' @examples
#' portfolio.om_chart(threshold_start=0, threshold_end=1.5)
#' @export
#* @get /portfolio.om_chart
portfolio.om_chart <- function(portfolio_engine, threshold_start = 0, threshold_end = 1.5) {
  o <- do.call(what=py$openbb$portfolio$om_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get portfolio performance vs the benchmark
#'
#' @description Wrapper for Python function portfolio.perf from OpenBB Terminal SDK
#'
#' @param portfolio_engine (Python type: openbb_terminal.portfolio.portfolio_engine.PortfolioEngine) PortfolioEngine class instance, this will hold transactions and perform calculations.
#'     Use `portfolio.load` to create a PortfolioEngine.
#' @param show_all_trades (logical length 1) Whether to also show all trades made and their performance (default is False)
#' @examples
#' portfolio.perf(show_all_trades=FALSE)
#' @export
#* @get /portfolio.perf
portfolio.perf <- function(portfolio_engine, show_all_trades = FALSE) {
  o <- do.call(what=py$openbb$portfolio$perf, args=as.list(rlang::call_match())[-1])
  o
}


#' Get rolling beta using portfolio and benchmark returns
#'
#' @description Wrapper for Python function portfolio.rbeta from OpenBB Terminal SDK
#'
#' @param window (character length 1) Interval used for rolling values.
#'     Possible options: mtd, qtd, ytd, 1d, 5d, 10d, 1m, 3m, 6m, 1y, 3y, 5y, 10y.
#' @examples
#' portfolio.rbeta(window='1y')
#' @export
#* @get /portfolio.rbeta
portfolio.rbeta <- function(portfolio_engine, window = "1y") {
  o <- do.call(what=py$openbb$portfolio$rbeta, args=as.list(rlang::call_match())[-1])
  o
}


#' Display rolling beta
#'
#' @description Wrapper for Python function portfolio.rbeta_chart from OpenBB Terminal SDK
#'
#' @param window (character length 1) interval for window to consider
#'     Possible options: mtd, qtd, ytd, 1d, 5d, 10d, 1m, 3m, 6m, 1y, 3y, 5y, 10y.
#' @param export (character length 1) Export to file
#' @examples
#' portfolio.rbeta_chart(window='1y')
#' @export
#* @get /portfolio.rbeta_chart
portfolio.rbeta_chart <- function(portfolio_engine, window = "1y", export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$portfolio$rbeta_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get rolling sharpe ratio
#'
#' @description Wrapper for Python function portfolio.rsharpe from OpenBB Terminal SDK
#'
#' @param risk_free_rate (numeric length 1) Risk free rate
#' @param window (character length 1) Rolling window to use
#'     Possible options: mtd, qtd, ytd, 1d, 5d, 10d, 1m, 3m, 6m, 1y, 3y, 5y, 10y
#' @examples
#' portfolio.rsharpe(risk_free_rate=0, window='1y')
#' @export
#* @get /portfolio.rsharpe
portfolio.rsharpe <- function(portfolio_engine, risk_free_rate = 0, window = "1y") {
  o <- do.call(what=py$openbb$portfolio$rsharpe, args=as.list(rlang::call_match())[-1])
  o
}


#' Display rolling sharpe
#'
#' @description Wrapper for Python function portfolio.rsharpe_chart from OpenBB Terminal SDK
#'
#' @param risk_free_rate (numeric length 1) Value to use for risk free rate in sharpe/other calculations
#' @param window (character length 1) interval for window to consider
#' @param export (character length 1) Export to file
#' @examples
#' portfolio.rsharpe_chart(risk_free_rate=0, window='1y')
#' @export
#* @get /portfolio.rsharpe_chart
portfolio.rsharpe_chart <- function(portfolio_engine, risk_free_rate = 0, window = "1y", export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$portfolio$rsharpe_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get rolling sortino
#'
#' @description Wrapper for Python function portfolio.rsort from OpenBB Terminal SDK
#'
#' @param risk_free_rate (numeric length 1) Value to use for risk free rate in sharpe/other calculations
#' @param window (character length 1) interval for window to consider
#'     Possible options: mtd, qtd, ytd, 1d, 5d, 10d, 1m, 3m, 6m, 1y, 3y, 5y, 10y
#' @examples
#' portfolio.rsort(window='1y', risk_free_rate=0)
#' @export
#* @get /portfolio.rsort
portfolio.rsort <- function(portfolio_engine, risk_free_rate = 0, window = "1y") {
  o <- do.call(what=py$openbb$portfolio$rsort, args=as.list(rlang::call_match())[-1])
  o
}


#' Display rolling sortino
#'
#' @description Wrapper for Python function portfolio.rsort_chart from OpenBB Terminal SDK
#'
#' @param risk_free_rate (numeric length 1) Value to use for risk free rate in sharpe/other calculations
#' @param window (character length 1) interval for window to consider
#' @param export (character length 1) Export to file
#' @examples
#' portfolio.rsort_chart(risk_free_rate=0, window='1y')
#' @export
#* @get /portfolio.rsort_chart
portfolio.rsort_chart <- function(portfolio_engine, risk_free_rate = 0, window = "1y", export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$portfolio$rsort_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get rolling volatility
#'
#' @description Wrapper for Python function portfolio.rvol from OpenBB Terminal SDK
#'
#' @param portfolio_engine (Python type: openbb_terminal.portfolio.portfolio_engine.PortfolioEngine) PortfolioEngine class instance, this will hold transactions and perform calculations.
#'     Use `portfolio.load` to create a PortfolioEngine.
#' @param window (character length 1) Rolling window size to use
#'     Possible options: mtd, qtd, ytd, 1d, 5d, 10d, 1m, 3m, 6m, 1y, 3y, 5y, 10y
#' @examples
#' portfolio.rvol(window='1y')
#' @export
#* @get /portfolio.rvol
portfolio.rvol <- function(portfolio_engine, window = "1y") {
  o <- do.call(what=py$openbb$portfolio$rvol, args=as.list(rlang::call_match())[-1])
  o
}


#' Display rolling volatility
#'
#' @description Wrapper for Python function portfolio.rvol_chart from OpenBB Terminal SDK
#'
#' @param export (character length 1) Export to file
#' @export
#* @get /portfolio.rvol_chart
portfolio.rvol_chart <- function(portfolio_engine, window = "1y", export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$portfolio$rvol_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get portfolio transactions
#'
#' @description Wrapper for Python function portfolio.show from OpenBB Terminal SDK
#'
#' @param portfolio_engine (Python type: openbb_terminal.portfolio.portfolio_engine.PortfolioEngine) PortfolioEngine class instance, this will hold transactions and perform calculations.
#'     Use `portfolio.load` to create a PortfolioEngine.
#' @export
#* @get /portfolio.show
portfolio.show <- function(portfolio_engine) {
  o <- do.call(what=py$openbb$portfolio$show, args=as.list(rlang::call_match())[-1])
  o
}


#' Get portfolio and benchmark returns summary
#'
#' @description Wrapper for Python function portfolio.summary from OpenBB Terminal SDK
#'
#' @param portfolio_engine (Python type: openbb_terminal.portfolio.portfolio_engine.PortfolioEngine) PortfolioEngine class instance, this will hold transactions and perform calculations.
#'     Use `portfolio.load` to create a PortfolioEngine.
#' @param window (character length 1) interval to compare cumulative returns and benchmark
#' @param risk_free_rate (numeric length 1) Risk free rate for calculations
#' @examples
#' portfolio.summary(window='all', risk_free_rate=0)
#' @export
#* @get /portfolio.summary
portfolio.summary <- function(portfolio_engine, window = "all", risk_free_rate = 0) {
  o <- do.call(what=py$openbb$portfolio$summary, args=as.list(rlang::call_match())[-1])
  o
}


#' Get portfolio VaR
#'
#' @description Wrapper for Python function portfolio.var from OpenBB Terminal SDK
#'
#' @param portfolio_engine (Python type: openbb_terminal.portfolio.portfolio_engine.PortfolioEngine) PortfolioEngine class instance, this will hold transactions and perform calculations.
#'     Use `portfolio.load` to create a PortfolioEngine.
#' @param use_mean (logical length 1) if one should use the data mean return
#' @param adjusted_var (logical length 1) if one should have VaR adjusted for skew and kurtosis (Cornish-Fisher-Expansion)
#' @param student_t (logical length 1) If one should use the student-t distribution
#' @param percentile (numeric length 1) var percentile (%)
#' @examples
#' portfolio.var(use_mean=FALSE, adjusted_var=FALSE, student_t=FALSE, percentile=99.9)
#' @export
#* @get /portfolio.var
portfolio.var <- function(portfolio_engine, use_mean = FALSE, adjusted_var = FALSE, student_t = FALSE, percentile = 99.9) {
  o <- do.call(what=py$openbb$portfolio$var, args=as.list(rlang::call_match())[-1])
  o
}


#' Get yearly returns
#'
#' @description Wrapper for Python function portfolio.yret from OpenBB Terminal SDK
#'
#' @param portfolio_engine (Python type: openbb_terminal.portfolio.portfolio_engine.PortfolioEngine) PortfolioEngine class instance, this will hold transactions and perform calculations.
#'     Use `portfolio.load` to create a PortfolioEngine.
#' @param window (character length 1) interval to compare cumulative returns and benchmark
#' @examples
#' portfolio.yret(window='all')
#' @export
#* @get /portfolio.yret
portfolio.yret <- function(portfolio_engine, window = "all") {
  o <- do.call(what=py$openbb$portfolio$yret, args=as.list(rlang::call_match())[-1])
  o
}


#' Display yearly returns
#'
#' @description Wrapper for Python function portfolio.yret_chart from OpenBB Terminal SDK
#'
#' @param portfolio_engine (Python type: openbb_terminal.portfolio.portfolio_engine.PortfolioEngine) PortfolioEngine class instance, this will hold transactions and perform calculations.
#'     Use `portfolio.load` to create a PortfolioEngine.
#' @param window (character length 1) interval to compare cumulative returns and benchmark
#' @param raw (logical length 1) Display raw data from cumulative return
#' @param export (character length 1) Export certain type of data
#' @examples
#' portfolio.yret_chart(window='all')
#' @export
#* @get /portfolio.yret_chart
portfolio.yret_chart <- function(portfolio_engine, window = "all", raw = FALSE, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$portfolio$yret_chart, args=as.list(rlang::call_match())[-1])
  o
}


#'
#' @description Wrapper for Python function portfolio.alloc.about from OpenBB Terminal SDK
#'
#' @export
#* @get /portfolio.alloc.about
portfolio.alloc.about <- function() {
  o <- do.call(what=py$openbb$portfolio$alloc$about, args=as.list(rlang::call_match())[-1])
  o
}


#' Display portfolio asset allocation compared to the benchmark
#'
#' @description Wrapper for Python function portfolio.alloc.assets from OpenBB Terminal SDK
#'
#' @param portfolio_engine (Python type: openbb_terminal.portfolio.portfolio_engine.PortfolioEngine) PortfolioEngine class instance, this will hold transactions and perform calculations.
#'     Use `portfolio.load` to create a PortfolioEngine.
#' @param tables (logical length 1) Whether to include separate allocation tables
#' @param limit (integer length 1) The amount of assets you wish to show, by default this is set to 10
#' @param recalculate (logical length 1) Flag to force recalculate allocation if already exists
#' @examples
#' portfolio.alloc.assets(tables=FALSE, limit=10, recalculate=FALSE)
#' @export
#* @get /portfolio.alloc.assets
portfolio.alloc.assets <- function(portfolio_engine, tables = FALSE, limit = 10, recalculate = FALSE) {
  o <- do.call(what=py$openbb$portfolio$alloc$assets, args=as.list(rlang::call_match())[-1])
  o
}


#' Display portfolio country allocation compared to the benchmark
#'
#' @description Wrapper for Python function portfolio.alloc.countries from OpenBB Terminal SDK
#'
#' @param portfolio_engine (Python type: openbb_terminal.portfolio.portfolio_engine.PortfolioEngine) PortfolioEngine class instance, this will hold transactions and perform calculations.
#'     Use `portfolio.load` to create a PortfolioEngine.
#' @param limit (integer length 1) The amount of assets you wish to show, by default this is set to 10
#' @param tables (logical length 1) Whether to include separate allocation tables
#' @param recalculate (logical length 1) Flag to force recalculate allocation if already exists
#' @examples
#' portfolio.alloc.countries(tables=FALSE, limit=10, recalculate=FALSE)
#' @export
#* @get /portfolio.alloc.countries
portfolio.alloc.countries <- function(portfolio_engine, limit = 10, tables = FALSE, recalculate = FALSE) {
  o <- do.call(what=py$openbb$portfolio$alloc$countries, args=as.list(rlang::call_match())[-1])
  o
}


#' Display portfolio region allocation compared to the benchmark
#'
#' @description Wrapper for Python function portfolio.alloc.regions from OpenBB Terminal SDK
#'
#' @param portfolio_engine (Python type: openbb_terminal.portfolio.portfolio_engine.PortfolioEngine) PortfolioEngine class instance, this will hold transactions and perform calculations.
#'     Use `portfolio.load` to create a PortfolioEngine.
#' @param limit (integer length 1) The amount of assets you wish to show, by default this is set to 10
#' @param tables (logical length 1) Whether to include separate allocation tables
#' @param recalculate (logical length 1) Flag to force recalculate allocation if already exists
#' @examples
#' portfolio.alloc.regions(tables=FALSE, limit=10, recalculate=FALSE)
#' @export
#* @get /portfolio.alloc.regions
portfolio.alloc.regions <- function(portfolio_engine, limit = 10, tables = FALSE, recalculate = FALSE) {
  o <- do.call(what=py$openbb$portfolio$alloc$regions, args=as.list(rlang::call_match())[-1])
  o
}


#' Display portfolio sector allocation compared to the benchmark
#'
#' @description Wrapper for Python function portfolio.alloc.sectors from OpenBB Terminal SDK
#'
#' @param portfolio_engine (Python type: openbb_terminal.portfolio.portfolio_engine.PortfolioEngine) PortfolioEngine class instance, this will hold transactions and perform calculations.
#'     Use `portfolio.load` to create a PortfolioEngine.
#' @param limit (integer length 1) The amount of assets you wish to show, by default this is set to 10
#' @param tables (logical length 1) Whether to include separate allocation tables
#' @param recalculate (logical length 1) Flag to force recalculate allocation if already exists
#' @examples
#' portfolio.alloc.sectors(tables=FALSE, limit=10, recalculate=FALSE)
#' @export
#* @get /portfolio.alloc.sectors
portfolio.alloc.sectors <- function(portfolio_engine, limit = 10, tables = FALSE, recalculate = FALSE) {
  o <- do.call(what=py$openbb$portfolio$alloc$sectors, args=as.list(rlang::call_match())[-1])
  o
}


#'
#' @description Wrapper for Python function portfolio.metric.about from OpenBB Terminal SDK
#'
#' @export
#* @get /portfolio.metric.about
portfolio.metric.about <- function() {
  o <- do.call(what=py$openbb$portfolio$metric$about, args=as.list(rlang::call_match())[-1])
  o
}


#' Get calmar ratio
#'
#' @description Wrapper for Python function portfolio.metric.calmar from OpenBB Terminal SDK
#'
#' @param portfolio_engine (Python type: openbb_terminal.portfolio.portfolio_engine.PortfolioEngine) PortfolioEngine class instance, this will hold transactions and perform calculations.
#'     Use `portfolio.load` to create a PortfolioEngine.
#' @param window (integer length 1) Interval used for rolling values
#' @examples
#' portfolio.metric.calmar(window=756)
#' @export
#* @get /portfolio.metric.calmar
portfolio.metric.calmar <- function(portfolio_engine, window = 756) {
  o <- do.call(what=py$openbb$portfolio$metric$calmar, args=as.list(rlang::call_match())[-1])
  o
}


#' Get common sense ratio
#'
#' @description Wrapper for Python function portfolio.metric.commonsense from OpenBB Terminal SDK
#'
#' @param portfolio_engine (Python type: openbb_terminal.portfolio.portfolio_engine.PortfolioEngine) PortfolioEngine class instance, this will hold transactions and perform calculations.
#'     Use `portfolio.load` to create a PortfolioEngine.
#' @export
#* @get /portfolio.metric.commonsense
portfolio.metric.commonsense <- function(portfolio_engine) {
  o <- do.call(what=py$openbb$portfolio$metric$commonsense, args=as.list(rlang::call_match())[-1])
  o
}


#' Get Pain-to-Gain ratio based on historical data
#'
#' @description Wrapper for Python function portfolio.metric.gaintopain from OpenBB Terminal SDK
#'
#' @param portfolio_engine (Python type: openbb_terminal.portfolio.portfolio_engine.PortfolioEngine) PortfolioEngine class instance, this will hold transactions and perform calculations.
#'     Use `portfolio.load` to create a PortfolioEngine.
#' @export
#* @get /portfolio.metric.gaintopain
portfolio.metric.gaintopain <- function(portfolio_engine) {
  o <- do.call(what=py$openbb$portfolio$metric$gaintopain, args=as.list(rlang::call_match())[-1])
  o
}


#' Get information ratio
#'
#' @description Wrapper for Python function portfolio.metric.information from OpenBB Terminal SDK
#'
#' @param portfolio_engine (Python type: openbb_terminal.portfolio.portfolio_engine.PortfolioEngine) PortfolioEngine class instance, this will hold transactions and perform calculations.
#'     Use `portfolio.load` to create a PortfolioEngine.
#' @export
#* @get /portfolio.metric.information
portfolio.metric.information <- function(portfolio_engine) {
  o <- do.call(what=py$openbb$portfolio$metric$information, args=as.list(rlang::call_match())[-1])
  o
}


#' Get jensen's alpha
#'
#' @description Wrapper for Python function portfolio.metric.jensens from OpenBB Terminal SDK
#'
#' @param portfolio_engine (Python type: openbb_terminal.portfolio.portfolio_engine.PortfolioEngine) PortfolioEngine class instance, this will hold transactions and perform calculations.
#'     Use `portfolio.load` to create a PortfolioEngine.
#' @param risk_free_rate (numeric length 1) Risk free rate
#' @param window (character length 1) Interval used for rolling values
#' @examples
#' portfolio.metric.jensens(window='1y', risk_free_rate=0)
#' @export
#* @get /portfolio.metric.jensens
portfolio.metric.jensens <- function(portfolio_engine, risk_free_rate = 0, window = "1y") {
  o <- do.call(what=py$openbb$portfolio$metric$jensens, args=as.list(rlang::call_match())[-1])
  o
}


#' Get kelly criterion
#'
#' @description Wrapper for Python function portfolio.metric.kelly from OpenBB Terminal SDK
#'
#' @param portfolio_engine (Python type: openbb_terminal.portfolio.portfolio_engine.PortfolioEngine) PortfolioEngine class instance, this will hold transactions and perform calculations.
#'     Use `portfolio.load` to create a PortfolioEngine.
#' @export
#* @get /portfolio.metric.kelly
portfolio.metric.kelly <- function(portfolio_engine) {
  o <- do.call(what=py$openbb$portfolio$metric$kelly, args=as.list(rlang::call_match())[-1])
  o
}


#' Get kurtosis for portfolio and benchmark selected
#'
#' @description Wrapper for Python function portfolio.metric.kurtosis from OpenBB Terminal SDK
#'
#' @param portfolio_engine (Python type: openbb_terminal.portfolio.portfolio_engine.PortfolioEngine) PortfolioEngine class instance, this will hold transactions and perform calculations.
#'     Use `portfolio.load` to create a PortfolioEngine.
#' @export
#* @get /portfolio.metric.kurtosis
portfolio.metric.kurtosis <- function(portfolio_engine) {
  o <- do.call(what=py$openbb$portfolio$metric$kurtosis, args=as.list(rlang::call_match())[-1])
  o
}


#' Get maximum drawdown ratio for portfolio and benchmark selected
#'
#' @description Wrapper for Python function portfolio.metric.maxdrawdown from OpenBB Terminal SDK
#'
#' @param portfolio_engine (Python type: openbb_terminal.portfolio.portfolio_engine.PortfolioEngine) PortfolioEngine class instance, this will hold transactions and perform calculations.
#'     Use `portfolio.load` to create a PortfolioEngine.
#' @export
#* @get /portfolio.metric.maxdrawdown
portfolio.metric.maxdrawdown <- function(portfolio_engine) {
  o <- do.call(what=py$openbb$portfolio$metric$maxdrawdown, args=as.list(rlang::call_match())[-1])
  o
}


#' Get payoff ratio
#'
#' @description Wrapper for Python function portfolio.metric.payoff from OpenBB Terminal SDK
#'
#' @export
#* @get /portfolio.metric.payoff
portfolio.metric.payoff <- function(portfolio_engine) {
  o <- do.call(what=py$openbb$portfolio$metric$payoff, args=as.list(rlang::call_match())[-1])
  o
}


#' Get profit factor
#'
#' @description Wrapper for Python function portfolio.metric.profitfactor from OpenBB Terminal SDK
#'
#' @param portfolio_engine (Python type: openbb_terminal.portfolio.portfolio_engine.PortfolioEngine) PortfolioEngine class instance, this will hold transactions and perform calculations.
#'     Use `portfolio.load` to create a PortfolioEngine.
#' @export
#* @get /portfolio.metric.profitfactor
portfolio.metric.profitfactor <- function(portfolio_engine) {
  o <- do.call(what=py$openbb$portfolio$metric$profitfactor, args=as.list(rlang::call_match())[-1])
  o
}


#' Get R2 Score for portfolio and benchmark selected
#'
#' @description Wrapper for Python function portfolio.metric.rsquare from OpenBB Terminal SDK
#'
#' @param portfolio_engine (Python type: openbb_terminal.portfolio.portfolio_engine.PortfolioEngine) PortfolioEngine class instance, this will hold transactions and perform calculations.
#'     Use `portfolio.load` to create a PortfolioEngine.
#' @export
#* @get /portfolio.metric.rsquare
portfolio.metric.rsquare <- function(portfolio_engine) {
  o <- do.call(what=py$openbb$portfolio$metric$rsquare, args=as.list(rlang::call_match())[-1])
  o
}


#' Get sharpe ratio for portfolio and benchmark selected
#'
#' @description Wrapper for Python function portfolio.metric.sharpe from OpenBB Terminal SDK
#'
#' @param portfolio_engine (Python type: openbb_terminal.portfolio.portfolio_engine.PortfolioEngine) PortfolioEngine class instance, this will hold transactions and perform calculations.
#'     Use `portfolio.load` to create a PortfolioEngine.
#' @param risk_free_rate (numeric length 1) Risk free rate value
#' @examples
#' portfolio.metric.sharpe(risk_free_rate=0)
#' @export
#* @get /portfolio.metric.sharpe
portfolio.metric.sharpe <- function(portfolio_engine, risk_free_rate = 0) {
  o <- do.call(what=py$openbb$portfolio$metric$sharpe, args=as.list(rlang::call_match())[-1])
  o
}


#' Get skewness for portfolio and benchmark selected
#'
#' @description Wrapper for Python function portfolio.metric.skew from OpenBB Terminal SDK
#'
#' @export
#* @get /portfolio.metric.skew
portfolio.metric.skew <- function(portfolio_engine) {
  o <- do.call(what=py$openbb$portfolio$metric$skew, args=as.list(rlang::call_match())[-1])
  o
}


#' Get sortino ratio for portfolio and benchmark selected
#'
#' @description Wrapper for Python function portfolio.metric.sortino from OpenBB Terminal SDK
#'
#' @param portfolio_engine (Python type: openbb_terminal.portfolio.portfolio_engine.PortfolioEngine) PortfolioEngine class instance, this will hold transactions and perform calculations.
#'     Use `portfolio.load` to create a PortfolioEngine.
#' @param risk_free_rate (numeric length 1) Risk free rate value
#' @examples
#' portfolio.metric.sortino(risk_free_rate=0)
#' @export
#* @get /portfolio.metric.sortino
portfolio.metric.sortino <- function(portfolio_engine, risk_free_rate = 0) {
  o <- do.call(what=py$openbb$portfolio$metric$sortino, args=as.list(rlang::call_match())[-1])
  o
}


#' Get tail ratio
#'
#' @description Wrapper for Python function portfolio.metric.tail from OpenBB Terminal SDK
#'
#' @param portfolio_engine (Python type: openbb_terminal.portfolio.portfolio_engine.PortfolioEngine) PortfolioEngine class instance, this will hold transactions and perform calculations.
#'     Use `portfolio.load` to create a PortfolioEngine.
#' @param window (integer length 1) Interval used for rolling values
#' @examples
#' portfolio.metric.tail(window=252)
#' @export
#* @get /portfolio.metric.tail
portfolio.metric.tail <- function(portfolio_engine, window = 252) {
  o <- do.call(what=py$openbb$portfolio$metric$tail, args=as.list(rlang::call_match())[-1])
  o
}


#' Get tracking error
#'
#' @description Wrapper for Python function portfolio.metric.trackerr from OpenBB Terminal SDK
#'
#' @param portfolio_engine (Python type: openbb_terminal.portfolio.portfolio_engine.PortfolioEngine) PortfolioEngine class instance, this will hold transactions and perform calculations.
#'     Use `portfolio.load` to create a PortfolioEngine.
#' @param window (integer length 1) Interval used for rolling values
#' @examples
#' portfolio.metric.trackerr(window=252)
#' @export
#* @get /portfolio.metric.trackerr
portfolio.metric.trackerr <- function(portfolio_engine, window = 252) {
  o <- do.call(what=py$openbb$portfolio$metric$trackerr, args=as.list(rlang::call_match())[-1])
  o
}


#' Get volatility for portfolio and benchmark selected
#'
#' @description Wrapper for Python function portfolio.metric.volatility from OpenBB Terminal SDK
#'
#' @param portfolio_engine (Python type: openbb_terminal.portfolio.portfolio_engine.PortfolioEngine) PortfolioEngine class instance, this will hold transactions and perform calculations.
#'     Use `portfolio.load` to create a PortfolioEngine.
#' @export
#* @get /portfolio.metric.volatility
portfolio.metric.volatility <- function(portfolio_engine) {
  o <- do.call(what=py$openbb$portfolio$metric$volatility, args=as.list(rlang::call_match())[-1])
  o
}


#'
#' @description Wrapper for Python function portfolio.po.about from OpenBB Terminal SDK
#'
#' @export
#* @get /portfolio.po.about
portfolio.po.about <- function() {
  o <- do.call(what=py$openbb$portfolio$po$about, args=as.list(rlang::call_match())[-1])
  o
}


#' Optimize decorrelation weights
#'
#' @description Wrapper for Python function portfolio.po.blacklitterman from OpenBB Terminal SDK
#'
#' @export
#* @get /portfolio.po.blacklitterman
portfolio.po.blacklitterman <- function(portfolio_engine, kwargs) {
  o <- do.call(what=py$openbb$portfolio$po$blacklitterman, args=as.list(rlang::call_match())[-1])
  o
}


#' Get Efficient Frontier
#'
#' @description Wrapper for Python function portfolio.po.ef from OpenBB Terminal SDK
#'
#' @export
#* @get /portfolio.po.ef
portfolio.po.ef <- function(portfolio_engine, kwargs) {
  o <- do.call(what=py$openbb$portfolio$po$ef, args=as.list(rlang::call_match())[-1])
  o
}


#' Display efficient frontier
#'
#' @description Wrapper for Python function portfolio.po.ef_chart from OpenBB Terminal SDK
#'
#' @export
#* @get /portfolio.po.ef_chart
portfolio.po.ef_chart <- function(portfolio_engine, kwargs) {
  o <- do.call(what=py$openbb$portfolio$po$ef_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Load portfolio optimization engine from file
#'
#' @description Wrapper for Python function portfolio.po.file from OpenBB Terminal SDK
#'
#' @param portfolio_engine (Python type: openbb_terminal.portfolio.portfolio_optimization.po_engine.PoEngine) Portfolio optimization engine, by default None
#'     Use `portfolio.po.load` to load a portfolio engine
#' @param parameters_file_path (character length 1) Parameters file full path, by default None
#' @export
#* @get /portfolio.po.file
portfolio.po.file <- function(portfolio_engine, parameters_file_path) {
  o <- do.call(what=py$openbb$portfolio$po$file, args=as.list(rlang::call_match())[-1])
  o
}


#' Optimize with Hierarchical Equal Risk Contribution (HERC) method.
#'
#' @description Wrapper for Python function portfolio.po.herc from OpenBB Terminal SDK
#'
#' @export
#* @get /portfolio.po.herc
portfolio.po.herc <- function(portfolio_engine, kwargs) {
  o <- do.call(what=py$openbb$portfolio$po$herc, args=as.list(rlang::call_match())[-1])
  o
}


#' Optimize with Hierarchical Risk Parity
#'
#' @description Wrapper for Python function portfolio.po.hrp from OpenBB Terminal SDK
#'
#' @export
#* @get /portfolio.po.hrp
portfolio.po.hrp <- function(portfolio_engine, kwargs) {
  o <- do.call(what=py$openbb$portfolio$po$hrp, args=as.list(rlang::call_match())[-1])
  o
}


#' Load portfolio optimization engine
#'
#' @description Wrapper for Python function portfolio.po.load from OpenBB Terminal SDK
#'
#' @export
#* @get /portfolio.po.load
portfolio.po.load <- function(symbols_categories, symbols_file_path, parameters_file_path) {
  o <- do.call(what=py$openbb$portfolio$po$load, args=as.list(rlang::call_match())[-1])
  o
}


#' Load a Excel file with views for Black Litterman model.
#'
#' @description Wrapper for Python function portfolio.po.load_bl_views from OpenBB Terminal SDK
#'
#' @param excel_file (character length 1) The location of the Excel file that needs to be loaded.
#' @export
#* @get /portfolio.po.load_bl_views
portfolio.po.load_bl_views <- function(excel_file = "") {
  o <- do.call(what=py$openbb$portfolio$po$load_bl_views, args=as.list(rlang::call_match())[-1])
  o
}


#' Optimize decorrelation weights
#'
#' @description Wrapper for Python function portfolio.po.maxdecorr from OpenBB Terminal SDK
#'
#' @export
#* @get /portfolio.po.maxdecorr
portfolio.po.maxdecorr <- function(portfolio_engine, kwargs) {
  o <- do.call(what=py$openbb$portfolio$po$maxdecorr, args=as.list(rlang::call_match())[-1])
  o
}


#' Optimize diversification weights
#'
#' @description Wrapper for Python function portfolio.po.maxdiv from OpenBB Terminal SDK
#'
#' @export
#* @get /portfolio.po.maxdiv
portfolio.po.maxdiv <- function(portfolio_engine, kwargs) {
  o <- do.call(what=py$openbb$portfolio$po$maxdiv, args=as.list(rlang::call_match())[-1])
  o
}


#' Optimize maximum return weights
#'
#' @description Wrapper for Python function portfolio.po.maxret from OpenBB Terminal SDK
#'
#' @export
#* @get /portfolio.po.maxret
portfolio.po.maxret <- function(portfolio_engine, kwargs) {
  o <- do.call(what=py$openbb$portfolio$po$maxret, args=as.list(rlang::call_match())[-1])
  o
}


#' Optimize Sharpe ratio weights
#'
#' @description Wrapper for Python function portfolio.po.maxsharpe from OpenBB Terminal SDK
#'
#' @export
#* @get /portfolio.po.maxsharpe
portfolio.po.maxsharpe <- function(portfolio_engine, kwargs) {
  o <- do.call(what=py$openbb$portfolio$po$maxsharpe, args=as.list(rlang::call_match())[-1])
  o
}


#' Optimize maximum utility weights
#'
#' @description Wrapper for Python function portfolio.po.maxutil from OpenBB Terminal SDK
#'
#' @export
#* @get /portfolio.po.maxutil
portfolio.po.maxutil <- function(portfolio_engine, kwargs) {
  o <- do.call(what=py$openbb$portfolio$po$maxutil, args=as.list(rlang::call_match())[-1])
  o
}


#' Optimize minimum risk weights
#'
#' @description Wrapper for Python function portfolio.po.minrisk from OpenBB Terminal SDK
#'
#' @export
#* @get /portfolio.po.minrisk
portfolio.po.minrisk <- function(portfolio_engine, kwargs) {
  o <- do.call(what=py$openbb$portfolio$po$minrisk, args=as.list(rlang::call_match())[-1])
  o
}


#' Optimize with Non-Convex Optimization (NCO) model.
#'
#' @description Wrapper for Python function portfolio.po.nco from OpenBB Terminal SDK
#'
#' @export
#* @get /portfolio.po.nco
portfolio.po.nco <- function(portfolio_engine, kwargs) {
  o <- do.call(what=py$openbb$portfolio$po$nco, args=as.list(rlang::call_match())[-1])
  o
}


#' Display efficient frontier
#'
#' @description Wrapper for Python function portfolio.po.plot from OpenBB Terminal SDK
#'
#' @param chart_type (character length 1) Chart type, by default "pie"
#'     Options are "pie", "hist", "dd" or "rc"
#' @examples
#' portfolio.po.plot(chart_type='pie')
#' @export
#* @get /portfolio.po.plot
portfolio.po.plot <- function(portfolio_engine, chart_type = "pie", kwargs) {
  o <- do.call(what=py$openbb$portfolio$po$plot, args=as.list(rlang::call_match())[-1])
  o
}


#' Display efficient frontier
#'
#' @description Wrapper for Python function portfolio.po.plot_chart from OpenBB Terminal SDK
#'
#' @param chart_type (character length 1) Chart type, by default "pie"
#'     Options are "pie", "hist", "dd" or "rc"
#' @examples
#' portfolio.po.plot_chart(chart_type='pie')
#' @export
#* @get /portfolio.po.plot_chart
portfolio.po.plot_chart <- function(portfolio_engine, chart_type = "pie", kwargs) {
  o <- do.call(what=py$openbb$portfolio$po$plot_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Optimize with Relaxed Risk Parity using the least squares approach
#'
#' @description Wrapper for Python function portfolio.po.relriskparity from OpenBB Terminal SDK
#'
#' @export
#* @get /portfolio.po.relriskparity
portfolio.po.relriskparity <- function(portfolio_engine, kwargs) {
  o <- do.call(what=py$openbb$portfolio$po$relriskparity, args=as.list(rlang::call_match())[-1])
  o
}


#' Optimize with Risk Parity using the risk budgeting approach
#'
#' @description Wrapper for Python function portfolio.po.riskparity from OpenBB Terminal SDK
#'
#' @export
#* @get /portfolio.po.riskparity
portfolio.po.riskparity <- function(portfolio_engine, kwargs) {
  o <- do.call(what=py$openbb$portfolio$po$riskparity, args=as.list(rlang::call_match())[-1])
  o
}


#' Show portfolio optimization results
#'
#' @description Wrapper for Python function portfolio.po.show from OpenBB Terminal SDK
#'
#' @param portfolio_engine (Python type: openbb_terminal.portfolio.portfolio_optimization.po_engine.PoEngine) Portfolio optimization engine
#'     Use `portfolio.po.load` to load a portfolio engine
#' @export
#* @get /portfolio.po.show
portfolio.po.show <- function(portfolio_engine, category) {
  o <- do.call(what=py$openbb$portfolio$po$show, args=as.list(rlang::call_match())[-1])
  o
}


#'
#' @description Wrapper for Python function qa.about from OpenBB Terminal SDK
#'
#' @export
#* @get /qa.about
qa.about <- function() {
  o <- do.call(what=py$openbb$qa$about, args=as.list(rlang::call_match())[-1])
  o
}


#' Plots Auto and Partial Auto Correlation of returns and change in returns
#'
#' @description Wrapper for Python function qa.acf from OpenBB Terminal SDK
#'
#' @param data (data.frame) Dataframe to look at
#' @param target (character length 1) Data column to look at
#' @param symbol (character length 1) Name of dataset
#' @param lags (integer length 1) Max number of lags to look at
#' @examples
#' qa.acf(lags=15)
#' @export
#* @get /qa.acf
qa.acf <- function(data, target, symbol = "", lags = 15, external_axes) {
  o <- do.call(what=py$openbb$qa$acf, args=as.list(rlang::call_match())[-1])
  o
}


#' Plots box and whisker plots
#'
#' @description Wrapper for Python function qa.bw from OpenBB Terminal SDK
#'
#' @param data (data.frame) Dataframe to look at
#' @param target (character length 1) Data column to look at
#' @param symbol (character length 1) Name of dataset
#' @param yearly (logical length 1) Flag to indicate yearly accumulation
#' @examples
#' qa.bw(yearly=TRUE)
#' @export
#* @get /qa.bw
qa.bw <- function(data, target, symbol = "", yearly = TRUE, external_axes) {
  o <- do.call(what=py$openbb$qa$bw, args=as.list(rlang::call_match())[-1])
  o
}


#' Calculates VaR, which is adjusted for skew and kurtosis (Cornish-Fischer-Expansion)
#'
#' @description Wrapper for Python function qa.calculate_adjusted_var from OpenBB Terminal SDK
#'
#' @param kurtosis (numeric length 1) kurtosis of data
#' @param skew (numeric length 1) skew of data
#' @param ndp (numeric length 1) normal distribution percentage number (99% -> -2.326)
#' @param std (numeric length 1) standard deviation of data
#' @param mean (numeric length 1) mean of data
#' @export
#* @get /qa.calculate_adjusted_var
qa.calculate_adjusted_var <- function(kurtosis, skew, ndp, std, mean) {
  o <- do.call(what=py$openbb$qa$calculate_adjusted_var, args=as.list(rlang::call_match())[-1])
  o
}


#' Plots Cumulative Distribution Function
#'
#' @description Wrapper for Python function qa.cdf from OpenBB Terminal SDK
#'
#' @param data (data.frame) Dataframe to look at
#' @param target (character length 1) Data column
#' @param symbol (character length 1) Name of dataset
#' @param export (character length 1) Format to export data
#' @export
#* @get /qa.cdf
qa.cdf <- function(data, target, symbol = "", export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$qa$cdf, args=as.list(rlang::call_match())[-1])
  o
}


#' Plots Cumulative sum algorithm (CUSUM) to detect abrupt changes in data
#'
#' @description Wrapper for Python function qa.cusum from OpenBB Terminal SDK
#'
#' @param data (data.frame) Dataframe
#' @param target (character length 1) Column of data to look at
#' @param threshold (numeric length 1) Threshold value
#' @param drift (numeric length 1) Drift parameter
#' @examples
#' qa.cusum(threshold=5, drift=2.1)
#' @export
#* @get /qa.cusum
qa.cusum <- function(data, target, threshold = 5, drift = 2.1, external_axes) {
  o <- do.call(what=py$openbb$qa$cusum, args=as.list(rlang::call_match())[-1])
  o
}


#' Perform seasonal decomposition
#'
#' @description Wrapper for Python function qa.decompose from OpenBB Terminal SDK
#'
#' @param data (data.frame) Dataframe of targeted data
#' @param multiplicative (logical length 1) Boolean to indicate multiplication instead of addition
#' @examples
#' qa.decompose(multiplicative=FALSE)
#' @export
#* @get /qa.decompose
qa.decompose <- function(data, multiplicative = FALSE) {
  o <- do.call(what=py$openbb$qa$decompose, args=as.list(rlang::call_match())[-1])
  o
}


#' Gets Expected Shortfall for specified stock dataframe.
#'
#' @description Wrapper for Python function qa.es from OpenBB Terminal SDK
#'
#' @param data (data.frame) Data dataframe
#' @param use_mean (logical length 1) If one should use the data mean for calculation
#' @param distribution (character length 1) Type of distribution, options: laplace, student_t, normal
#' @param portfolio (logical length 1) If the data is a portfolio
#' @examples
#' qa.es(use_mean=FALSE, distribution='normal', percentile=99.9, portfolio=FALSE)
#' @export
#* @get /qa.es
qa.es <- function(data, use_mean = FALSE, distribution = "normal", percentile, portfolio = FALSE) {
  o <- do.call(what=py$openbb$qa$es, args=as.list(rlang::call_match())[-1])
  o
}


#' Prints table showing expected shortfall.
#'
#' @description Wrapper for Python function qa.es_chart from OpenBB Terminal SDK
#'
#' @param data (data.frame) Data dataframe
#' @param symbol (character length 1) name of the data
#' @param use_mean (logical length 1) if one should use the data mean return
#' @param distribution (character length 1) choose distribution to use: logistic, laplace, normal
#' @param percentile (numeric length 1) es percentile
#' @param portfolio (logical length 1) If the data is a portfolio
#' @examples
#' qa.es_chart(distribution='normal', percentile=99, portfolio=FALSE)
#' @export
#* @get /qa.es_chart
qa.es_chart <- function(data, symbol = "", use_mean = FALSE, distribution = "normal", percentile = 99.9, portfolio = FALSE) {
  o <- do.call(what=py$openbb$qa$es_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Plots histogram of data
#'
#' @description Wrapper for Python function qa.hist from OpenBB Terminal SDK
#'
#' @param data (data.frame) Dataframe to look at
#' @param target (character length 1) Data column to get histogram of the dataframe
#' @param symbol (character length 1) Name of dataset
#' @param bins (integer length 1) Number of bins in histogram
#' @examples
#' qa.hist(bins=15)
#' @export
#* @get /qa.hist
qa.hist <- function(data, target, symbol = "", bins = 15, external_axes) {
  o <- do.call(what=py$openbb$qa$hist, args=as.list(rlang::call_match())[-1])
  o
}


#' Kurtosis Indicator
#'
#' @description Wrapper for Python function qa.kurtosis from OpenBB Terminal SDK
#'
#' @param data (data.frame) Dataframe of targeted data
#' @param window (integer length 1) Length of window
#' @examples
#' qa.kurtosis(window=14)
#' @export
#* @get /qa.kurtosis
qa.kurtosis <- function(data, window = 14) {
  o <- do.call(what=py$openbb$qa$kurtosis, args=as.list(rlang::call_match())[-1])
  o
}


#' Plots rolling kurtosis
#'
#' @description Wrapper for Python function qa.kurtosis_chart from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Ticker
#' @param data (data.frame) Dataframe of stock prices
#' @param target (character length 1) Column in data to look at
#' @param window (integer length 1) Length of window
#' @param export (character length 1) Format to export data
#' @examples
#' qa.kurtosis_chart(symbol='AMZN', window=14)
#' @export
#* @get /qa.kurtosis_chart
qa.kurtosis_chart <- function(symbol, data, target, window = 14, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$qa$kurtosis_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Display line plot of data
#'
#' @description Wrapper for Python function qa.line from OpenBB Terminal SDK
#'
#' @param data (Python type: pandas.core.series.Series) Data to plot
#' @param title (character length 1) Title for plot
#' @param log_y (logical length 1) Flag for showing y on log scale
#' @param export (character length 1) Format to export data
#' @examples
#' qa.line(log_y=TRUE)
#' @export
#* @get /qa.line
qa.line <- function(data, title = "", log_y = TRUE, markers_lines, markers_scatter, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$qa$line, args=as.list(rlang::call_match())[-1])
  o
}


#' Look at the distribution of returns and generate statistics on the relation to the normal curve.
#'
#' @description Wrapper for Python function qa.normality from OpenBB Terminal SDK
#'
#' @param data (data.frame) Dataframe of targeted data
#' @export
#* @get /qa.normality
qa.normality <- function(data) {
  o <- do.call(what=py$openbb$qa$normality, args=as.list(rlang::call_match())[-1])
  o
}


#' Prints table showing normality statistics
#'
#' @description Wrapper for Python function qa.normality_chart from OpenBB Terminal SDK
#'
#' @param data (data.frame) DataFrame
#' @param target (character length 1) Column in data to look at
#' @param export (character length 1) Format to export data
#' @export
#* @get /qa.normality_chart
qa.normality_chart <- function(data, target, export = "", sheet_name) {
  o <- do.call(what=py$openbb$qa$normality_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get the omega series
#'
#' @description Wrapper for Python function qa.omega from OpenBB Terminal SDK
#'
#' @param data (data.frame) stock dataframe
#' @param threshold_start (numeric length 1) annualized target return threshold start of plotted threshold range
#' @param threshold_end (numeric length 1) annualized target return threshold end of plotted threshold range
#' @examples
#' qa.omega(threshold_start=0, threshold_end=1.5)
#' @export
#* @get /qa.omega
qa.omega <- function(data, threshold_start = 0, threshold_end = 1.5) {
  o <- do.call(what=py$openbb$qa$omega, args=as.list(rlang::call_match())[-1])
  o
}


#' Plots the omega ratio
#'
#' @description Wrapper for Python function qa.omega_chart from OpenBB Terminal SDK
#'
#' @param data (data.frame) stock dataframe
#' @param threshold_start (numeric length 1) annualized target return threshold start of plotted threshold range
#' @param threshold_end (numeric length 1) annualized target return threshold end of plotted threshold range
#' @examples
#' qa.omega_chart(threshold_start=0, threshold_end=1.5)
#' @export
#* @get /qa.omega_chart
qa.omega_chart <- function(data, threshold_start = 0, threshold_end = 1.5) {
  o <- do.call(what=py$openbb$qa$omega_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Plots QQ plot for data against normal quantiles
#'
#' @description Wrapper for Python function qa.qqplot from OpenBB Terminal SDK
#'
#' @param data (data.frame) Dataframe
#' @param target (character length 1) Column in data to look at
#' @param symbol (character length 1) Stock ticker
#' @export
#* @get /qa.qqplot
qa.qqplot <- function(data, target, symbol = "", external_axes) {
  o <- do.call(what=py$openbb$qa$qqplot, args=as.list(rlang::call_match())[-1])
  o
}


#' Overlay Median & Quantile
#'
#' @description Wrapper for Python function qa.quantile from OpenBB Terminal SDK
#'
#' @param data (data.frame) Dataframe of targeted data
#' @param window (integer length 1) Length of window
#' @param quantile_pct (numeric length 1) Quantile to display
#' @examples
#' qa.quantile(window=14, quantile_pct=0.5)
#' @export
#* @get /qa.quantile
qa.quantile <- function(data, window = 14, quantile_pct = 0.5) {
  o <- do.call(what=py$openbb$qa$quantile, args=as.list(rlang::call_match())[-1])
  o
}


#' Plots rolling quantile
#'
#' @description Wrapper for Python function qa.quantile_chart from OpenBB Terminal SDK
#'
#' @param data (data.frame) Dataframe
#' @param target (character length 1) Column in data to look at
#' @param symbol (character length 1) Stock ticker
#' @param window (integer length 1) Length of window
#' @param quantile (numeric length 1) Quantile to get
#' @param export (character length 1) Format to export data
#' @examples
#' qa.quantile_chart(window=14, quantile=0.5)
#' @export
#* @get /qa.quantile_chart
qa.quantile_chart <- function(data, target, symbol = "", window = 14, quantile = 0.5, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$qa$quantile_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Return rolling mean and standard deviation
#'
#' @description Wrapper for Python function qa.rolling from OpenBB Terminal SDK
#'
#' @param data (data.frame) Dataframe of target data
#' @param window (integer length 1) Length of rolling window
#' @examples
#' qa.rolling(window=14)
#' @export
#* @get /qa.rolling
qa.rolling <- function(data, window = 14) {
  o <- do.call(what=py$openbb$qa$rolling, args=as.list(rlang::call_match())[-1])
  o
}


#' Plots mean std deviation
#'
#' @description Wrapper for Python function qa.rolling_chart from OpenBB Terminal SDK
#'
#' @param data (data.frame) Dataframe
#' @param target (character length 1) Column in data to look at
#' @param symbol (character length 1) Stock ticker
#' @param window (integer length 1) Length of window
#' @param export (character length 1) Format to export data
#' @examples
#' qa.rolling_chart(window=14)
#' @export
#* @get /qa.rolling_chart
qa.rolling_chart <- function(data, target, symbol = "", window = 14, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$qa$rolling_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Calculates the sharpe ratio
#'
#' @description Wrapper for Python function qa.sharpe from OpenBB Terminal SDK
#'
#' @param data (data.frame) selected dataframe column
#' @param rfr (numeric length 1) risk free rate
#' @param window (numeric length 1) length of the rolling window
#' @examples
#' qa.sharpe(rfr=0, window=252)
#' @export
#* @get /qa.sharpe
qa.sharpe <- function(data, rfr = 0, window = 252) {
  o <- do.call(what=py$openbb$qa$sharpe, args=as.list(rlang::call_match())[-1])
  o
}


#' Plots Calculated the sharpe ratio
#'
#' @description Wrapper for Python function qa.sharpe_chart from OpenBB Terminal SDK
#'
#' @param data (data.frame) selected dataframe column
#' @param rfr (numeric length 1) risk free rate
#' @param window (numeric length 1) length of the rolling window
#' @examples
#' qa.sharpe_chart(rfr=0, window=252)
#' @export
#* @get /qa.sharpe_chart
qa.sharpe_chart <- function(data, rfr = 0, window = 252) {
  o <- do.call(what=py$openbb$qa$sharpe_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Skewness Indicator
#'
#' @description Wrapper for Python function qa.skew from OpenBB Terminal SDK
#'
#' @param data (data.frame) Dataframe of targeted data
#' @param window (integer length 1) Length of window
#' @examples
#' qa.skew(window=14)
#' @export
#* @get /qa.skew
qa.skew <- function(data, window = 14) {
  o <- do.call(what=py$openbb$qa$skew, args=as.list(rlang::call_match())[-1])
  o
}


#' Plots rolling skew
#'
#' @description Wrapper for Python function qa.skew_chart from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Stock ticker
#' @param data (data.frame) Dataframe
#' @param target (character length 1) Column in data to look at
#' @param window (integer length 1) Length of window
#' @param export (character length 1) Format to export data
#' @examples
#' qa.skew_chart(symbol='AMZN', window=14)
#' @export
#* @get /qa.skew_chart
qa.skew_chart <- function(symbol, data, target, window = 14, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$qa$skew_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Calculates the sortino ratio
#'
#' @description Wrapper for Python function qa.sortino from OpenBB Terminal SDK
#'
#' @param data (data.frame) selected dataframe
#' @param target_return (numeric length 1) target return of the asset
#' @param window (numeric length 1) length of the rolling window
#' @param adjusted (logical length 1) adjust the sortino ratio
#' @examples
#' qa.sortino(target_return=0, window=252, adjusted=FALSE)
#' @export
#* @get /qa.sortino
qa.sortino <- function(data, target_return = 0, window = 252, adjusted = FALSE) {
  o <- do.call(what=py$openbb$qa$sortino, args=as.list(rlang::call_match())[-1])
  o
}


#' Plots the sortino ratio
#'
#' @description Wrapper for Python function qa.sortino_chart from OpenBB Terminal SDK
#'
#' @param data (data.frame) selected dataframe
#' @param target_return (numeric length 1) target return of the asset
#' @param window (numeric length 1) length of the rolling window
#' @param adjusted (logical length 1) adjust the sortino ratio
#' @export
#* @get /qa.sortino_chart
qa.sortino_chart <- function(data, target_return, window, adjusted = TRUE) {
  o <- do.call(what=py$openbb$qa$sortino_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Standard Deviation and Variance
#'
#' @description Wrapper for Python function qa.spread from OpenBB Terminal SDK
#'
#' @param data (data.frame) DataFrame of targeted data
#' @param window (integer length 1) Length of window
#' @examples
#' qa.spread(window=14)
#' @export
#* @get /qa.spread
qa.spread <- function(data, window = 14) {
  o <- do.call(what=py$openbb$qa$spread, args=as.list(rlang::call_match())[-1])
  o
}


#' Plots rolling spread
#'
#' @description Wrapper for Python function qa.spread_chart from OpenBB Terminal SDK
#'
#' @param data (data.frame) Dataframe
#' @param target (character length 1) Column in data to look at
#' @param symbol (character length 1) Stock ticker
#' @param window (integer length 1) Length of window
#' @param export (character length 1) Format to export data
#' @examples
#' qa.spread_chart(window=14)
#' @export
#* @get /qa.spread_chart
qa.spread_chart <- function(data, target, symbol = "", window = 14, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$qa$spread_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Print summary statistics
#'
#' @description Wrapper for Python function qa.summary from OpenBB Terminal SDK
#'
#' @param data (data.frame) Dataframe to get summary statistics for
#' @export
#* @get /qa.summary
qa.summary <- function(data) {
  o <- do.call(what=py$openbb$qa$summary, args=as.list(rlang::call_match())[-1])
  o
}


#' Prints table showing summary statistics
#'
#' @description Wrapper for Python function qa.summary_chart from OpenBB Terminal SDK
#'
#' @param data (data.frame) DataFrame to get statistics of
#' @param export (character length 1) Format to export data
#' @export
#* @get /qa.summary_chart
qa.summary_chart <- function(data, export = "", sheet_name) {
  o <- do.call(what=py$openbb$qa$summary_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Calculate test statistics for unit roots
#'
#' @description Wrapper for Python function qa.unitroot from OpenBB Terminal SDK
#'
#' @param data (data.frame) DataFrame of target variable
#' @param fuller_reg (character length 1) Type of regression of ADF test. Can be ‘c’,’ct’,’ctt’,’nc’ 'c' - Constant and t - trend order
#' @param kpss_reg (character length 1) Type of regression for KPSS test.  Can be ‘c’,’ct'
#' @examples
#' qa.unitroot(fuller_reg='c', kpss_reg='c')
#' @export
#* @get /qa.unitroot
qa.unitroot <- function(data, fuller_reg = "c", kpss_reg = "c") {
  o <- do.call(what=py$openbb$qa$unitroot, args=as.list(rlang::call_match())[-1])
  o
}


#' Prints table showing unit root test calculations
#'
#' @description Wrapper for Python function qa.unitroot_chart from OpenBB Terminal SDK
#'
#' @param data (data.frame) DataFrame
#' @param target (character length 1) Column of data to look at
#' @param fuller_reg (character length 1) Type of regression of ADF test. Can be ‘c’,’ct’,’ctt’,’nc’ 'c' - Constant and t - trend order
#' @param kpss_reg (character length 1) Type of regression for KPSS test. Can be ‘c’,’ct'
#' @param export (character length 1) Format for exporting data
#' @examples
#' qa.unitroot_chart(fuller_reg='c', kpss_reg='c')
#' @export
#* @get /qa.unitroot_chart
qa.unitroot_chart <- function(data, target, fuller_reg = "c", kpss_reg = "c", export = "", sheet_name) {
  o <- do.call(what=py$openbb$qa$unitroot_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Gets value at risk for specified stock dataframe.
#'
#' @description Wrapper for Python function qa.var from OpenBB Terminal SDK
#'
#' @param data (data.frame) Data dataframe
#' @param use_mean (logical length 1) If one should use the data mean for calculation
#' @param adjusted_var (logical length 1) If one should return VaR adjusted for skew and kurtosis
#' @param student_t (logical length 1) If one should use the student-t distribution
#' @param portfolio (logical length 1) If the data is a portfolio
#' @examples
#' qa.var(use_mean=FALSE, adjusted_var=FALSE, student_t=FALSE, percentile=99.9, portfolio=FALSE)
#' @export
#* @get /qa.var
qa.var <- function(data, use_mean = FALSE, adjusted_var = FALSE, student_t = FALSE, percentile, portfolio = FALSE) {
  o <- do.call(what=py$openbb$qa$var, args=as.list(rlang::call_match())[-1])
  o
}


#' Prints table showing VaR of dataframe.
#'
#' @description Wrapper for Python function qa.var_chart from OpenBB Terminal SDK
#'
#' @param data (data.frame) Data dataframe
#' @param symbol (character length 1) name of the data
#' @param use_mean (logical length 1) if one should use the data mean return
#' @param adjusted_var (logical length 1) if one should have VaR adjusted for skew and kurtosis (Cornish-Fisher-Expansion)
#' @param student_t (logical length 1) If one should use the student-t distribution
#' @param percentile (numeric length 1) var percentile
#' @param data_range (integer length 1) Number of rows you want to use VaR over
#' @param portfolio (logical length 1) If the data is a portfolio
#' @examples
#' qa.var_chart(use_mean=FALSE, adjusted_var=FALSE, student_t=FALSE, percentile=99, data_range=0, portfolio=FALSE)
#' @export
#* @get /qa.var_chart
qa.var_chart <- function(data, symbol = "", use_mean = FALSE, adjusted_var = FALSE, student_t = FALSE, percentile = 99.9, data_range = 0, portfolio = FALSE) {
  o <- do.call(what=py$openbb$qa$var_chart, args=as.list(rlang::call_match())[-1])
  o
}


#'
#' @description Wrapper for Python function stocks.about from OpenBB Terminal SDK
#'
#' @export
#* @get /stocks.about
stocks.about <- function() {
  o <- do.call(what=py$openbb$stocks$about, args=as.list(rlang::call_match())[-1])
  o
}


#' Show candle plot of loaded ticker.
#'
#' @description Wrapper for Python function stocks.candle from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Ticker name
#' @param use_matplotlib (logical length 1) Flag to use matplotlib instead of interactive plotly chart
#' @param intraday (logical length 1) Flag for intraday data for plotly range breaks
#' @param add_trend (logical length 1) Flag to add high and low trends to chart
#' @param interval (integer length 1) Interval (in minutes) to get data 1, 5, 15, 30, 60 or 1440
#' @param prepost (logical length 1) Pre and After hours data
#' @param source (character length 1) Source of data extracted
#' @param weekly (logical length 1) Flag to get weekly data
#' @param monthly (logical length 1) Flag to get monthly data
#' @param raw (logical length 1) Flag to display raw data, by default False
#' @param yscale (character length 1) Linear or log for yscale
#' @examples
#' stocks.candle(symbol='AMZN', use_matplotlib=TRUE, intraday=FALSE, add_trend=FALSE, interval=1440, prepost=FALSE, source='YahooFinance', weekly=FALSE, monthly=FALSE, raw=FALSE, yscale='linear')
#' @export
#* @get /stocks.candle
stocks.candle <- function(symbol, data, use_matplotlib = TRUE, intraday = FALSE, add_trend = FALSE, ma, asset_type = "", start_date, interval = 1440, end_date, prepost = FALSE, source = "YahooFinance", weekly = FALSE, monthly = FALSE, external_axes, raw = FALSE, yscale = "linear") {
  o <- do.call(what=py$openbb$stocks$candle, args=as.list(rlang::call_match())[-1])
  o
}


#' Load a symbol to perform analysis using the string above as a template.
#'
#' @description Wrapper for Python function stocks.load from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Ticker to get data
#' @param interval (integer length 1) Interval (in minutes) to get data 1, 5, 15, 30, 60 or 1440
#' @param prepost (logical length 1) Pre and After hours data
#' @param source (character length 1) Source of data extracted
#' @param weekly (logical length 1) Flag to get weekly data
#' @param monthly (logical length 1) Flag to get monthly data
#' @param verbose (logical length 1) Display verbose information on what was the symbol that was loaded
#' @examples
#' stocks.load(symbol='AMZN', interval=1440, prepost=FALSE, source='YahooFinance', weekly=FALSE, monthly=FALSE, verbose=TRUE)
#' @export
#* @get /stocks.load
stocks.load <- function(symbol, start_date, interval = 1440, end_date, prepost = FALSE, source = "YahooFinance", weekly = FALSE, monthly = FALSE, verbose = TRUE, R6 = FALSE) {

    if(isTRUE(R6)) {
        args <- as.list(rlang::call_match())[-1]
        args$R6 <- NULL
        o <- do.call(what=py$openbb$stocks$load, args=args, envir = parent.frame())
    } else {
        args <- as.list(rlang::call_match())[-1]
        args$R6 <- NULL
        o <- do.call(what=py$openbb$stocks$load, args=as.list(rlang::call_match())[-1])
    }

    o
}


#' Process DataFrame into candle style plot.
#'
#' @description Wrapper for Python function stocks.process_candle from OpenBB Terminal SDK
#'
#' @param data (data.frame) Stock dataframe.
#' @export
#* @get /stocks.process_candle
stocks.process_candle <- function(data) {
  o <- do.call(what=py$openbb$stocks$process_candle, args=as.list(rlang::call_match())[-1])
  o
}


#' Gets ticker quote from FMP
#'
#' @description Wrapper for Python function stocks.quote from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Stock ticker symbol
#' @examples
#' stocks.quote(symbol='AMZN')
#' @export
#* @get /stocks.quote
stocks.quote <- function(symbol) {
  o <- do.call(what=py$openbb$stocks$quote, args=as.list(rlang::call_match())[-1])
  o
}


#' Search selected query for tickers.
#'
#' @description Wrapper for Python function stocks.search from OpenBB Terminal SDK
#'
#' @param query (character length 1) The search term used to find company tickers
#' @param country (character length 1) Search by country to find stocks matching the criteria
#' @param sector (character length 1) Search by sector to find stocks matching the criteria
#' @param industry (character length 1) Search by industry to find stocks matching the criteria
#' @param exchange_country (character length 1) Search by exchange country to find stock matching
#' @param all_exchanges (logical length 1) Whether to search all exchanges, without this option only the United States market is searched
#' @param limit (integer length 1) The limit of companies shown.
#' @examples
#' stocks.search(limit=0)
#' @export
#* @get /stocks.search
stocks.search <- function(query = "", country = "", sector = "", industry_group = "", industry = "", exchange_country = "", all_exchanges = FALSE, limit = 0) {
  o <- do.call(what=py$openbb$stocks$search, args=as.list(rlang::call_match())[-1])
  o
}


#' Get top of book bid and ask for ticker on exchange [CBOE.com]
#'
#' @description Wrapper for Python function stocks.tob from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Ticker to get
#' @param exchange (character length 1) Exchange to look at.  Can be `BZX`,`EDGX`, `BYX`, `EDGA`
#' @examples
#' stocks.tob(symbol='AMZN', exchange='BZX')
#' @export
#* @get /stocks.tob
stocks.tob <- function(symbol, exchange = "BZX") {
  o <- do.call(what=py$openbb$stocks$tob, args=as.list(rlang::call_match())[-1])
  o
}


#'
#' @description Wrapper for Python function stocks.ba.about from OpenBB Terminal SDK
#'
#' @export
#* @get /stocks.ba.about
stocks.ba.about <- function() {
  o <- do.call(what=py$openbb$stocks$ba$about, args=as.list(rlang::call_match())[-1])
  o
}


#' Gets bullbear sentiment for ticker [Source: stocktwits].
#'
#' @description Wrapper for Python function stocks.ba.bullbear from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Ticker symbol to look at
#' @examples
#' stocks.ba.bullbear(symbol='AMZN')
#' @export
#* @get /stocks.ba.bullbear
stocks.ba.bullbear <- function(symbol) {
  o <- do.call(what=py$openbb$stocks$ba$bullbear, args=as.list(rlang::call_match())[-1])
  o
}


#' Get news from a company. [Source: Finnhub]
#'
#' @description Wrapper for Python function stocks.ba.cnews from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) company ticker to look for news articles
#' @examples
#' stocks.ba.cnews(symbol='AMZN')
#' @export
#* @get /stocks.ba.cnews
stocks.ba.cnews <- function(symbol, start_date, end_date) {
  o <- do.call(what=py$openbb$stocks$ba$cnews, args=as.list(rlang::call_match())[-1])
  o
}


#' Gets due diligence posts from list of subreddits [Source: reddit].
#'
#' @description Wrapper for Python function stocks.ba.getdd from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Stock ticker
#' @param limit (integer length 1) Number of posts to get
#' @param n_days (integer length 1) Number of days back to get posts
#' @param show_all_flairs (logical length 1) Search through all flairs (apart from Yolo and Meme)
#' @examples
#' stocks.ba.getdd(symbol='AMZN', limit=5, n_days=3, show_all_flairs=FALSE)
#' @export
#* @get /stocks.ba.getdd
stocks.ba.getdd <- function(symbol, limit = 5, n_days = 3, show_all_flairs = FALSE) {
  o <- do.call(what=py$openbb$stocks$ba$getdd, args=as.list(rlang::call_match())[-1])
  o
}


#' Gets Sentiment analysis provided by FinBrain's API [Source: finbrain].
#'
#' @description Wrapper for Python function stocks.ba.headlines from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Ticker symbol to get the sentiment analysis from
#' @examples
#' stocks.ba.headlines(symbol='AMZN')
#' @export
#* @get /stocks.ba.headlines
stocks.ba.headlines <- function(symbol) {
  o <- do.call(what=py$openbb$stocks$ba$headlines, args=as.list(rlang::call_match())[-1])
  o
}


#' Plots Sentiment analysis from FinBrain. Prints table if raw is True. [Source: FinBrain]
#'
#' @description Wrapper for Python function stocks.ba.headlines_chart from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Ticker symbol to get the sentiment analysis from
#' @param raw (logical length 1) Display raw table data
#' @param export (character length 1) Format to export data
#' @examples
#' stocks.ba.headlines_chart(symbol='AMZN')
#' @export
#* @get /stocks.ba.headlines_chart
stocks.ba.headlines_chart <- function(symbol, raw = FALSE, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$stocks$ba$headlines_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Load tweets from twitter API and analyzes using VADER.
#'
#' @description Wrapper for Python function stocks.ba.infer from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Ticker symbol to search twitter for
#' @param limit (integer length 1) Number of tweets to analyze
#' @examples
#' stocks.ba.infer(symbol='AMZN', limit=100)
#' @export
#* @get /stocks.ba.infer
stocks.ba.infer <- function(symbol, limit = 100, start_date, end_date) {
  o <- do.call(what=py$openbb$stocks$ba$infer, args=as.list(rlang::call_match())[-1])
  o
}


#' Prints Inference sentiment from past n tweets.
#'
#' @description Wrapper for Python function stocks.ba.infer_chart from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Stock ticker symbol
#' @param limit (integer length 1) Number of tweets to analyze
#' @param export (character length 1) Format to export tweet dataframe
#' @examples
#' stocks.ba.infer_chart(symbol='AMZN', limit=100)
#' @export
#* @get /stocks.ba.infer_chart
stocks.ba.infer_chart <- function(symbol, limit = 100, export = "", sheet_name) {
  o <- do.call(what=py$openbb$stocks$ba$infer_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get interest over time from google api [Source: google].
#'
#' @description Wrapper for Python function stocks.ba.mentions from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Stock ticker symbol
#' @examples
#' stocks.ba.mentions(symbol='AMZN')
#' @export
#* @get /stocks.ba.mentions
stocks.ba.mentions <- function(symbol) {
  o <- do.call(what=py$openbb$stocks$ba$mentions, args=as.list(rlang::call_match())[-1])
  o
}


#' Plots weekly bars of stock's interest over time. other users watchlist. [Source: Google].
#'
#' @description Wrapper for Python function stocks.ba.mentions_chart from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Ticker symbol
#' @param start_date (character length 1) Start date as YYYY-MM-DD string
#' @param export (character length 1) Format to export data
#' @examples
#' stocks.ba.mentions_chart(symbol='AMZN')
#' @export
#* @get /stocks.ba.mentions_chart
stocks.ba.mentions_chart <- function(symbol, start_date = "", export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$stocks$ba$mentions_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get last messages for a given ticker [Source: stocktwits].
#'
#' @description Wrapper for Python function stocks.ba.messages from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Stock ticker symbol
#' @param limit (integer length 1) Number of messages to get
#' @examples
#' stocks.ba.messages(symbol='AMZN', limit=30)
#' @export
#* @get /stocks.ba.messages
stocks.ba.messages <- function(symbol, limit = 30) {
  o <- do.call(what=py$openbb$stocks$ba$messages, args=as.list(rlang::call_match())[-1])
  o
}


#' Get popular tickers from list of subreddits [Source: reddit].
#'
#' @description Wrapper for Python function stocks.ba.popular from OpenBB Terminal SDK
#'
#' @param limit (integer length 1) Number of top tickers to get
#' @param post_limit (integer length 1) How many posts to analyze in each subreddit
#' @param subreddits (character length 1) String of comma separated subreddits.
#' @examples
#' stocks.ba.popular(limit=10, post_limit=50)
#' @export
#* @get /stocks.ba.popular
stocks.ba.popular <- function(limit = 10, post_limit = 50, subreddits = "") {
  o <- do.call(what=py$openbb$stocks$ba$popular, args=as.list(rlang::call_match())[-1])
  o
}


#' Get related queries from google api [Source: google].
#'
#' @description Wrapper for Python function stocks.ba.queries from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Stock ticker symbol to compare
#' @param limit (integer length 1) Number of queries to show
#' @examples
#' stocks.ba.queries(symbol='AMZN', limit=10)
#' @export
#* @get /stocks.ba.queries
stocks.ba.queries <- function(symbol, limit = 10) {
  o <- do.call(what=py$openbb$stocks$ba$queries, args=as.list(rlang::call_match())[-1])
  o
}


#' Finds posts related to a specific search term in Reddit.
#'
#' @description Wrapper for Python function stocks.ba.redditsent from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Ticker symbol to search for
#' @param limit (integer length 1) Number of posts to get per subreddit
#' @param sortby (character length 1) Search type (Possibilities: "relevance", "hot", "top", "new", or "comments")
#' @param time_frame (character length 1) Relative time of post (Possibilities: "hour", "day", "week", "month", "year", "all")
#' @param full_search (logical length 1) Enable comprehensive search for ticker
#' @param subreddits (character length 1) Comma-separated list of subreddits
#' @examples
#' stocks.ba.redditsent(symbol='AMZN', limit=100, sortby='relevance', time_frame='week', full_search=TRUE, subreddits='all')
#' @export
#* @get /stocks.ba.redditsent
stocks.ba.redditsent <- function(symbol, limit = 100, sortby = "relevance", time_frame = "week", full_search = TRUE, subreddits = "all") {
  o <- do.call(what=py$openbb$stocks$ba$redditsent, args=as.list(rlang::call_match())[-1])
  o
}


#' Get interest by region from google api [Source: google].
#'
#' @description Wrapper for Python function stocks.ba.regions from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Ticker symbol to look at
#' @examples
#' stocks.ba.regions(symbol='AMZN')
#' @export
#* @get /stocks.ba.regions
stocks.ba.regions <- function(symbol) {
  o <- do.call(what=py$openbb$stocks$ba$regions, args=as.list(rlang::call_match())[-1])
  o
}


#' Plots bars of regions based on stock's interest. [Source: Google].
#'
#' @description Wrapper for Python function stocks.ba.regions_chart from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Ticker symbol
#' @param limit (integer length 1) Number of regions to show
#' @param export (character length 1) Format to export data
#' @examples
#' stocks.ba.regions_chart(symbol='AMZN', limit=5)
#' @export
#* @get /stocks.ba.regions_chart
stocks.ba.regions_chart <- function(symbol, limit = 5, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$stocks$ba$regions_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get top rising related queries with this stock's query [Source: google].
#'
#' @description Wrapper for Python function stocks.ba.rise from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Stock ticker symbol
#' @param limit (integer length 1) Number of queries to show
#' @examples
#' stocks.ba.rise(symbol='AMZN', limit=10)
#' @export
#* @get /stocks.ba.rise
stocks.ba.rise <- function(symbol, limit = 10) {
  o <- do.call(what=py$openbb$stocks$ba$rise, args=as.list(rlang::call_match())[-1])
  o
}


#' Get sentiments from symbol.
#'
#' @description Wrapper for Python function stocks.ba.sentiment from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Stock ticker symbol to get sentiment for
#' @param n_tweets (integer length 1) Number of tweets to get per hour
#' @param n_days_past (integer length 1) Number of days to extract tweets for
#' @examples
#' stocks.ba.sentiment(symbol='AMZN', n_tweets=15, n_days_past=2)
#' @export
#* @get /stocks.ba.sentiment
stocks.ba.sentiment <- function(symbol, n_tweets = 15, n_days_past = 2) {
  o <- do.call(what=py$openbb$stocks$ba$sentiment, args=as.list(rlang::call_match())[-1])
  o
}


#' Plots sentiments from symbol
#'
#' @description Wrapper for Python function stocks.ba.sentiment_chart from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Stock ticker symbol to get sentiment for
#' @param n_tweets (integer length 1) Number of tweets to get per hour
#' @param n_days_past (integer length 1) Number of days to extract tweets for
#' @param compare (logical length 1) Show corresponding change in stock price
#' @param export (character length 1) Format to export tweet dataframe
#' @examples
#' stocks.ba.sentiment_chart(symbol='AMZN', n_tweets=15, n_days_past=2, compare=FALSE)
#' @export
#* @get /stocks.ba.sentiment_chart
stocks.ba.sentiment_chart <- function(symbol, n_tweets = 15, n_days_past = 2, compare = FALSE, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$stocks$ba$sentiment_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get headlines sentiment using VADER model over time. [Source: Finnhub]
#'
#' @description Wrapper for Python function stocks.ba.snews from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Ticker of company
#' @examples
#' stocks.ba.snews(symbol='AMZN')
#' @export
#* @get /stocks.ba.snews
stocks.ba.snews <- function(symbol) {
  o <- do.call(what=py$openbb$stocks$ba$snews, args=as.list(rlang::call_match())[-1])
  o
}


#' Display stock price and headlines sentiment using VADER model over time. [Source: Finnhub]
#'
#' @description Wrapper for Python function stocks.ba.snews_chart from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Ticker of company
#' @param export (character length 1) Format to export data
#' @examples
#' stocks.ba.snews_chart(symbol='AMZN')
#' @export
#* @get /stocks.ba.snews_chart
stocks.ba.snews_chart <- function(symbol, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$stocks$ba$snews_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get posts containing SPAC from top subreddits [Source: reddit].
#'
#' @description Wrapper for Python function stocks.ba.spac from OpenBB Terminal SDK
#'
#' @param limit (integer length 1) Number of posts to get for each subreddit, by default 5
#' @examples
#' stocks.ba.spac(limit=5)
#' @export
#* @get /stocks.ba.spac
stocks.ba.spac <- function(limit = 5) {
  o <- do.call(what=py$openbb$stocks$ba$spac, args=as.list(rlang::call_match())[-1])
  o
}


#' Get top tickers from r/SPACs [Source: reddit].
#'
#' @description Wrapper for Python function stocks.ba.spacc from OpenBB Terminal SDK
#'
#' @param limit (integer length 1) Number of posts to look at
#' @param popular (logical length 1) Search by hot instead of new
#' @examples
#' stocks.ba.spacc(limit=10, popular=FALSE)
#' @export
#* @get /stocks.ba.spacc
stocks.ba.spacc <- function(limit = 10, popular = FALSE) {
  o <- do.call(what=py$openbb$stocks$ba$spacc, args=as.list(rlang::call_match())[-1])
  o
}


#' Gets messages from given user [Source: stocktwits].
#'
#' @description Wrapper for Python function stocks.ba.stalker from OpenBB Terminal SDK
#'
#' @param user (character length 1) User to get posts for
#' @param limit (integer length 1) Number of posts to get, by default 30
#' @examples
#' stocks.ba.stalker(limit=30)
#' @export
#* @get /stocks.ba.stalker
stocks.ba.stalker <- function(user, limit = 30) {
  o <- do.call(what=py$openbb$stocks$ba$stalker, args=as.list(rlang::call_match())[-1])
  o
}


#' Find the sentiment of a post and related comments.
#'
#' @description Wrapper for Python function stocks.ba.text_sent from OpenBB Terminal SDK
#'
#' @export
#* @get /stocks.ba.text_sent
stocks.ba.text_sent <- function(post_data) {
  o <- do.call(what=py$openbb$stocks$ba$text_sent, args=as.list(rlang::call_match())[-1])
  o
}


#' Get trending tickers from stocktwits [Source: stocktwits].
#'
#' @description Wrapper for Python function stocks.ba.trending from OpenBB Terminal SDK
#'
#' @export
#* @get /stocks.ba.trending
stocks.ba.trending <- function() {
  o <- do.call(what=py$openbb$stocks$ba$trending, args=as.list(rlang::call_match())[-1])
  o
}


#' Get reddit users watchlists [Source: reddit].
#'
#' @description Wrapper for Python function stocks.ba.watchlist from OpenBB Terminal SDK
#'
#' @param limit (integer length 1) Number of posts to look through
#' @examples
#' stocks.ba.watchlist(limit=5)
#' @export
#* @get /stocks.ba.watchlist
stocks.ba.watchlist <- function(limit = 5) {
  o <- do.call(what=py$openbb$stocks$ba$watchlist, args=as.list(rlang::call_match())[-1])
  o
}


#' Get wsb posts [Source: reddit].
#'
#' @description Wrapper for Python function stocks.ba.wsb from OpenBB Terminal SDK
#'
#' @param limit (integer length 1) Number of posts to get, by default 10
#' @param new (logical length 1) Flag to sort by new instead of hot, by default False
#' @examples
#' stocks.ba.wsb(limit=10, new=FALSE)
#' @export
#* @get /stocks.ba.wsb
stocks.ba.wsb <- function(limit = 10, new = FALSE) {
  o <- do.call(what=py$openbb$stocks$ba$wsb, args=as.list(rlang::call_match())[-1])
  o
}


#'
#' @description Wrapper for Python function stocks.ca.about from OpenBB Terminal SDK
#'
#' @export
#* @get /stocks.ca.about
stocks.ca.about <- function() {
  o <- do.call(what=py$openbb$stocks$ca$about, args=as.list(rlang::call_match())[-1])
  o
}


#' Get balance data. [Source: Marketwatch].
#'
#' @description Wrapper for Python function stocks.ca.balance from OpenBB Terminal SDK
#'
#' @param timeframe (character length 1) Column header to compare
#' @param quarter (logical length 1) Whether to use quarterly statements, by default False
#' @examples
#' stocks.ca.balance(timeframe='2021', quarter=FALSE)
#' @export
#* @get /stocks.ca.balance
stocks.ca.balance <- function(similar, timeframe = "2022", quarter = FALSE) {
  o <- do.call(what=py$openbb$stocks$ca$balance, args=as.list(rlang::call_match())[-1])
  o
}


#' Get cashflow data. [Source: Marketwatch]
#'
#' @description Wrapper for Python function stocks.ca.cashflow from OpenBB Terminal SDK
#'
#' @param timeframe (character length 1) Column header to compare
#' @param quarter (logical length 1) Whether to use quarterly statements, by default False
#' @examples
#' stocks.ca.cashflow(timeframe='2021', quarter=FALSE)
#' @export
#* @get /stocks.ca.cashflow
stocks.ca.cashflow <- function(similar, timeframe = "2022", quarter = FALSE) {
  o <- do.call(what=py$openbb$stocks$ca$cashflow, args=as.list(rlang::call_match())[-1])
  o
}


#' Get historical price correlation. [Source: Yahoo Finance]
#'
#' @description Wrapper for Python function stocks.ca.hcorr from OpenBB Terminal SDK
#'
#' @param candle_type (character length 1) OHLCA column to use for candles or R for returns, by default "a" for Adjusted Close
#' @examples
#' stocks.ca.hcorr(candle_type='a')
#' @export
#* @get /stocks.ca.hcorr
stocks.ca.hcorr <- function(similar, start_date, end_date, candle_type = "a") {
  o <- do.call(what=py$openbb$stocks$ca$hcorr, args=as.list(rlang::call_match())[-1])
  o
}


#' Correlation heatmap based on historical price comparison
#'
#' @description Wrapper for Python function stocks.ca.hcorr_chart from OpenBB Terminal SDK
#'
#' @param candle_type (character length 1) OHLCA column to use for candles or R for returns, by default "a" for Adjusted Close
#' @param display_full_matrix (logical length 1) Optionally display all values in the matrix, rather than masking off half, by default False
#' @param raw (logical length 1) Whether to display raw data
#' @param export (character length 1) Format to export correlation prices, by default ""
#' @examples
#' stocks.ca.hcorr_chart(candle_type='a', display_full_matrix=FALSE, raw=FALSE)
#' @export
#* @get /stocks.ca.hcorr_chart
stocks.ca.hcorr_chart <- function(similar, start_date, end_date, candle_type = "a", display_full_matrix = FALSE, raw = FALSE, external_axes, export = "", sheet_name) {
  o <- do.call(what=py$openbb$stocks$ca$hcorr_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get historical prices for all comparison stocks
#'
#' @description Wrapper for Python function stocks.ca.hist from OpenBB Terminal SDK
#'
#' @param candle_type (character length 1) Candle variable to compare, by default "a" for Adjusted Close. Possible values are: o, h, l, c, a, v, r
#' @examples
#' stocks.ca.hist(candle_type='a')
#' @export
#* @get /stocks.ca.hist
stocks.ca.hist <- function(similar, start_date, end_date, candle_type = "a") {
  o <- do.call(what=py$openbb$stocks$ca$hist, args=as.list(rlang::call_match())[-1])
  o
}


#' Display historical stock prices. [Source: Yahoo Finance]
#'
#' @description Wrapper for Python function stocks.ca.hist_chart from OpenBB Terminal SDK
#'
#' @param candle_type (character length 1) OHLCA column to use or R to use daily returns calculated from Adjusted Close, by default "a" for Adjusted Close
#' @param normalize (logical length 1) Boolean to normalize all stock prices using MinMax defaults True
#' @param export (character length 1) Format to export historical prices, by default ""
#' @examples
#' stocks.ca.hist_chart(candle_type='a', normalize=TRUE)
#' @export
#* @get /stocks.ca.hist_chart
stocks.ca.hist_chart <- function(similar, start_date, end_date, candle_type = "a", normalize = TRUE, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$stocks$ca$hist_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get income data. [Source: Marketwatch].
#'
#' @description Wrapper for Python function stocks.ca.income from OpenBB Terminal SDK
#'
#' @param timeframe (character length 1) Column header to compare
#' @param quarter (logical length 1) Whether to use quarterly statements, by default False
#' @examples
#' stocks.ca.income(timeframe='2021', quarter=FALSE)
#' @export
#* @get /stocks.ca.income
stocks.ca.income <- function(similar, timeframe = "2022", quarter = FALSE) {
  o <- do.call(what=py$openbb$stocks$ca$income, args=as.list(rlang::call_match())[-1])
  o
}


#' Display income data. [Source: Marketwatch].
#'
#' @description Wrapper for Python function stocks.ca.income_chart from OpenBB Terminal SDK
#'
#' @param timeframe (character length 1) What year to look at
#' @param quarter (logical length 1) Whether to use quarterly statements, by default False
#' @param export (character length 1) Format to export data
#' @examples
#' stocks.ca.income_chart(timeframe='2021', quarter=FALSE)
#' @export
#* @get /stocks.ca.income_chart
stocks.ca.income_chart <- function(symbols, timeframe = "2022", quarter = FALSE, export = "", sheet_name) {
  o <- do.call(what=py$openbb$stocks$ca$income_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get correlation sentiments across similar companies. [Source: FinBrain].
#'
#' @description Wrapper for Python function stocks.ca.scorr from OpenBB Terminal SDK
#'
#' @export
#* @get /stocks.ca.scorr
stocks.ca.scorr <- function(similar) {
  o <- do.call(what=py$openbb$stocks$ca$scorr, args=as.list(rlang::call_match())[-1])
  o
}


#' Plot correlation sentiments heatmap across similar companies. [Source: FinBrain].
#'
#' @description Wrapper for Python function stocks.ca.scorr_chart from OpenBB Terminal SDK
#'
#' @param raw (logical length 1) Output raw values, by default False
#' @param export (character length 1) Format to export data
#' @examples
#' stocks.ca.scorr_chart(raw=FALSE)
#' @export
#* @get /stocks.ca.scorr_chart
stocks.ca.scorr_chart <- function(similar, raw = FALSE, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$stocks$ca$scorr_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Screener Overview.
#'
#' @description Wrapper for Python function stocks.ca.screener from OpenBB Terminal SDK
#'
#' @param data_type (character length 1) Data type between: overview, valuation, financial, ownership, performance, technical
#' @examples
#' stocks.ca.screener(data_type='overview')
#' @export
#* @get /stocks.ca.screener
stocks.ca.screener <- function(similar, data_type = "overview") {
  o <- do.call(what=py$openbb$stocks$ca$screener, args=as.list(rlang::call_match())[-1])
  o
}


#' Gets Sentiment analysis from several symbols provided by FinBrain's API.
#'
#' @description Wrapper for Python function stocks.ca.sentiment from OpenBB Terminal SDK
#'
#' @export
#* @get /stocks.ca.sentiment
stocks.ca.sentiment <- function(symbols) {
  o <- do.call(what=py$openbb$stocks$ca$sentiment, args=as.list(rlang::call_match())[-1])
  o
}


#' Display sentiment for all ticker. [Source: FinBrain].
#'
#' @description Wrapper for Python function stocks.ca.sentiment_chart from OpenBB Terminal SDK
#'
#' @param raw (logical length 1) Output raw values, by default False
#' @param export (character length 1) Format to export data
#' @examples
#' stocks.ca.sentiment_chart(raw=FALSE)
#' @export
#* @get /stocks.ca.sentiment_chart
stocks.ca.sentiment_chart <- function(similar, raw = FALSE, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$stocks$ca$sentiment_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Find similar tickers to a given symbol.
#'
#' @description Wrapper for Python function stocks.ca.similar from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Symbol to find similar tickers to.
#' @param source (Python type: inspect._empty) Source to get data for, by default "Finviz".  Can be "Finviz", "Polygon", "Finnhub", or "TSNE"
#' @examples
#' stocks.ca.similar(symbol='AMZN', source='Finviz')
#' @export
#* @get /stocks.ca.similar
stocks.ca.similar <- function(symbol, source) {
  o <- do.call(what=py$openbb$stocks$ca$similar, args=as.list(rlang::call_match())[-1])
  o
}


#' Get stock volume. [Source: Yahoo Finance]
#'
#' @description Wrapper for Python function stocks.ca.volume from OpenBB Terminal SDK
#'
#' @export
#* @get /stocks.ca.volume
stocks.ca.volume <- function(similar, start_date, end_date) {
  o <- do.call(what=py$openbb$stocks$ca$volume, args=as.list(rlang::call_match())[-1])
  o
}


#' Display stock volume. [Source: Yahoo Finance]
#'
#' @description Wrapper for Python function stocks.ca.volume_chart from OpenBB Terminal SDK
#'
#' @param export (character length 1) Format to export historical prices, by default ""
#' @export
#* @get /stocks.ca.volume_chart
stocks.ca.volume_chart <- function(similar, start_date, end_date, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$stocks$ca$volume_chart, args=as.list(rlang::call_match())[-1])
  o
}


#'
#' @description Wrapper for Python function stocks.disc.about from OpenBB Terminal SDK
#'
#' @export
#* @get /stocks.disc.about
stocks.disc.about <- function() {
  o <- do.call(what=py$openbb$stocks$disc$about, args=as.list(rlang::call_match())[-1])
  o
}


#' Get stocks ordered in descending order by intraday trade volume. [Source: Yahoo Finance]
#'
#' @description Wrapper for Python function stocks.disc.active from OpenBB Terminal SDK
#'
#' @export
#* @get /stocks.disc.active
stocks.disc.active <- function() {
  o <- do.call(what=py$openbb$stocks$disc$active, args=as.list(rlang::call_match())[-1])
  o
}


#' Returns ARK orders in a Dataframe
#'
#' @description Wrapper for Python function stocks.disc.arkord from OpenBB Terminal SDK
#'
#' @param buys_only (logical length 1) Flag to filter on buys only
#' @param sells_only (logical length 1) Flag to sort on sells only
#' @param fund (character length 1) Optional filter by fund
#' @examples
#' stocks.disc.arkord(buys_only=FALSE, sells_only=FALSE)
#' @export
#* @get /stocks.disc.arkord
stocks.disc.arkord <- function(buys_only = FALSE, sells_only = FALSE, fund = "") {
  o <- do.call(what=py$openbb$stocks$disc$arkord, args=as.list(rlang::call_match())[-1])
  o
}


#' Get Yahoo Finance small cap stocks with earnings growth rates better than 25%.
#'
#' @description Wrapper for Python function stocks.disc.asc from OpenBB Terminal SDK
#'
#' @export
#* @get /stocks.disc.asc
stocks.disc.asc <- function() {
  o <- do.call(what=py$openbb$stocks$disc$asc, args=as.list(rlang::call_match())[-1])
  o
}


#' Gets dividend calendar for given date.  Date represents Ex-Dividend Date
#'
#' @description Wrapper for Python function stocks.disc.dividends from OpenBB Terminal SDK
#'
#' @export
#* @get /stocks.disc.dividends
stocks.disc.dividends <- function(date) {
  o <- do.call(what=py$openbb$stocks$disc$dividends, args=as.list(rlang::call_match())[-1])
  o
}


#' Get SEC Filings RSS feed, disseminated by FMP
#'
#' @description Wrapper for Python function stocks.disc.filings from OpenBB Terminal SDK
#'
#' @param pages (integer length 1) The range of most-rececnt pages to get entries from (1000 per page; maximum of 30 pages)
#' @export
#* @get /stocks.disc.filings
stocks.disc.filings <- function(pages = 1) {
  o <- do.call(what=py$openbb$stocks$disc$filings, args=as.list(rlang::call_match())[-1])
  o
}


#' Display recent forms submitted to the SEC
#'
#' @description Wrapper for Python function stocks.disc.filings_chart from OpenBB Terminal SDK
#'
#' @param pages (integer length 1) The range of most-rececnt pages to get entries from (1000 per page, max 30 pages)
#' @param limit (integer length 1) Limit the number of entries to display (default: 5)
#' @param today (logical length 1) Show all from today
#' @param export (character length 1) Export data as csv, json, or xlsx
#' @export
#* @get /stocks.disc.filings_chart
stocks.disc.filings_chart <- function(pages = 1, limit = 5, today = FALSE, export = "", sheet_name) {
  o <- do.call(what=py$openbb$stocks$disc$filings_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Future IPOs dates. [Source: Finnhub]
#'
#' @description Wrapper for Python function stocks.disc.fipo from OpenBB Terminal SDK
#'
#' @param num_days_ahead (integer length 1) Number of days to look ahead for IPOs dates
#' @examples
#' stocks.disc.fipo(num_days_ahead=5)
#' @export
#* @get /stocks.disc.fipo
stocks.disc.fipo <- function(num_days_ahead = 5, end_date) {
  o <- do.call(what=py$openbb$stocks$disc$fipo, args=as.list(rlang::call_match())[-1])
  o
}


#' Get top gainers. [Source: Yahoo Finance]
#'
#' @description Wrapper for Python function stocks.disc.gainers from OpenBB Terminal SDK
#'
#' @export
#* @get /stocks.disc.gainers
stocks.disc.gainers <- function() {
  o <- do.call(what=py$openbb$stocks$disc$gainers, args=as.list(rlang::call_match())[-1])
  o
}


#' Get technology stocks with revenue and earnings growth in excess of 25%. [Source: Yahoo Finance]
#'
#' @description Wrapper for Python function stocks.disc.gtech from OpenBB Terminal SDK
#'
#' @export
#* @get /stocks.disc.gtech
stocks.disc.gtech <- function() {
  o <- do.call(what=py$openbb$stocks$disc$gtech, args=as.list(rlang::call_match())[-1])
  o
}


#' Returns today hot penny stocks
#'
#' @description Wrapper for Python function stocks.disc.hotpenny from OpenBB Terminal SDK
#'
#' @export
#* @get /stocks.disc.hotpenny
stocks.disc.hotpenny <- function() {
  o <- do.call(what=py$openbb$stocks$disc$hotpenny, args=as.list(rlang::call_match())[-1])
  o
}


#' Get IPO calendar
#'
#' @description Wrapper for Python function stocks.disc.ipo from OpenBB Terminal SDK
#'
#' @export
#* @get /stocks.disc.ipo
stocks.disc.ipo <- function(start_date, end_date) {
  o <- do.call(what=py$openbb$stocks$disc$ipo, args=as.list(rlang::call_match())[-1])
  o
}


#' Get top losers. [Source: Yahoo Finance]
#'
#' @description Wrapper for Python function stocks.disc.losers from OpenBB Terminal SDK
#'
#' @export
#* @get /stocks.disc.losers
stocks.disc.losers <- function() {
  o <- do.call(what=py$openbb$stocks$disc$losers, args=as.list(rlang::call_match())[-1])
  o
}


#' Returns low float DataFrame
#'
#' @description Wrapper for Python function stocks.disc.lowfloat from OpenBB Terminal SDK
#'
#' @export
#* @get /stocks.disc.lowfloat
stocks.disc.lowfloat <- function() {
  o <- do.call(what=py$openbb$stocks$disc$lowfloat, args=as.list(rlang::call_match())[-1])
  o
}


#' Gets news. [Source: SeekingAlpha]
#'
#' @description Wrapper for Python function stocks.disc.news from OpenBB Terminal SDK
#'
#' @param news_type (character length 1) From: Top-News, On-The-Move, Market-Pulse, Notable-Calls, Buybacks, Commodities, Crypto, Issuance, Global,
#'     Guidance, IPOs, SPACs, Politics, M-A, Consumer, Energy, Financials, Healthcare, MLPs, REITs, Technology
#' @param limit (integer length 1) Number of news to display
#' @examples
#' stocks.disc.news(news_type='Top-News', limit=5)
#' @export
#* @get /stocks.disc.news
stocks.disc.news <- function(news_type = "Top-News", limit = 5) {
  o <- do.call(what=py$openbb$stocks$disc$news, args=as.list(rlang::call_match())[-1])
  o
}


#' Past IPOs dates. [Source: Finnhub]
#'
#' @description Wrapper for Python function stocks.disc.pipo from OpenBB Terminal SDK
#'
#' @param num_days_behind (integer length 1) Number of days to look behind for IPOs dates
#' @examples
#' stocks.disc.pipo(num_days_behind=5)
#' @export
#* @get /stocks.disc.pipo
stocks.disc.pipo <- function(num_days_behind = 5, start_date) {
  o <- do.call(what=py$openbb$stocks$disc$pipo, args=as.list(rlang::call_match())[-1])
  o
}


#' Gets the top 10 retail stocks per day
#'
#' @description Wrapper for Python function stocks.disc.rtat from OpenBB Terminal SDK
#'
#' @export
#* @get /stocks.disc.rtat
stocks.disc.rtat <- function() {
  o <- do.call(what=py$openbb$stocks$disc$rtat, args=as.list(rlang::call_match())[-1])
  o
}


#' Returns a list of trending articles
#'
#' @description Wrapper for Python function stocks.disc.trending from OpenBB Terminal SDK
#'
#' @param limit (integer length 1) Number of articles
#' @examples
#' stocks.disc.trending(limit=5)
#' @export
#* @get /stocks.disc.trending
stocks.disc.trending <- function(limit = 5) {
  o <- do.call(what=py$openbb$stocks$disc$trending, args=as.list(rlang::call_match())[-1])
  o
}


#' Get stocks with earnings growth rates better than 25% and relatively low PE and PEG ratios.
#'
#' @description Wrapper for Python function stocks.disc.ugs from OpenBB Terminal SDK
#'
#' @export
#* @get /stocks.disc.ugs
stocks.disc.ugs <- function() {
  o <- do.call(what=py$openbb$stocks$disc$ugs, args=as.list(rlang::call_match())[-1])
  o
}


#' Get Yahoo Finance potentially undervalued large cap stocks.
#'
#' @description Wrapper for Python function stocks.disc.ulc from OpenBB Terminal SDK
#'
#' @export
#* @get /stocks.disc.ulc
stocks.disc.ulc <- function() {
  o <- do.call(what=py$openbb$stocks$disc$ulc, args=as.list(rlang::call_match())[-1])
  o
}


#' Returns a DataFrame with upcoming earnings
#'
#' @description Wrapper for Python function stocks.disc.upcoming from OpenBB Terminal SDK
#'
#' @param limit (integer length 1) Number of pages
#' @examples
#' stocks.disc.upcoming(limit=10)
#' @export
#* @get /stocks.disc.upcoming
stocks.disc.upcoming <- function(limit = 10) {
  o <- do.call(what=py$openbb$stocks$disc$upcoming, args=as.list(rlang::call_match())[-1])
  o
}


#'
#' @description Wrapper for Python function stocks.dps.about from OpenBB Terminal SDK
#'
#' @export
#* @get /stocks.dps.about
stocks.dps.about <- function() {
  o <- do.call(what=py$openbb$stocks$dps$about, args=as.list(rlang::call_match())[-1])
  o
}


#' Get stocks with highest cost to borrow [Source: Interactive Broker]
#'
#' @description Wrapper for Python function stocks.dps.ctb from OpenBB Terminal SDK
#'
#' @export
#* @get /stocks.dps.ctb
stocks.dps.ctb <- function() {
  o <- do.call(what=py$openbb$stocks$dps$ctb, args=as.list(rlang::call_match())[-1])
  o
}


#' Get all FINRA data associated with a ticker
#'
#' @description Wrapper for Python function stocks.dps.dpotc from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Stock ticker to get data from
#' @examples
#' stocks.dps.dpotc(symbol='AMZN')
#' @export
#* @get /stocks.dps.dpotc
stocks.dps.dpotc <- function(symbol) {
  o <- do.call(what=py$openbb$stocks$dps$dpotc, args=as.list(rlang::call_match())[-1])
  o
}


#' Display barchart of dark pool (ATS) and OTC (Non ATS) data. [Source: FINRA]
#'
#' @description Wrapper for Python function stocks.dps.dpotc_chart from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Stock ticker
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' stocks.dps.dpotc_chart(symbol='AMZN')
#' @export
#* @get /stocks.dps.dpotc_chart
stocks.dps.dpotc_chart <- function(symbol, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$stocks$dps$dpotc_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Display fails-to-deliver data for a given ticker. [Source: SEC]
#'
#' @description Wrapper for Python function stocks.dps.ftd from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Stock ticker
#' @param limit (integer length 1) Number of latest fails-to-deliver being printed
#' @examples
#' stocks.dps.ftd(symbol='AMZN', limit=0)
#' @export
#* @get /stocks.dps.ftd
stocks.dps.ftd <- function(symbol, start_date, end_date, limit = 0) {
  o <- do.call(what=py$openbb$stocks$dps$ftd, args=as.list(rlang::call_match())[-1])
  o
}


#' Display fails-to-deliver data for a given ticker. [Source: SEC]
#'
#' @description Wrapper for Python function stocks.dps.ftd_chart from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Stock ticker
#' @param limit (integer length 1) Number of latest fails-to-deliver being printed
#' @param raw (logical length 1) Print raw data
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' stocks.dps.ftd_chart(symbol='AMZN', limit=0, raw=FALSE)
#' @export
#* @get /stocks.dps.ftd_chart
stocks.dps.ftd_chart <- function(symbol, data, start_date, end_date, limit = 0, raw = FALSE, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$stocks$dps$ftd_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Returns a high short interest DataFrame
#'
#' @description Wrapper for Python function stocks.dps.hsi from OpenBB Terminal SDK
#'
#' @export
#* @get /stocks.dps.hsi
stocks.dps.hsi <- function() {
  o <- do.call(what=py$openbb$stocks$dps$hsi, args=as.list(rlang::call_match())[-1])
  o
}


#' Get dark pool short positions. [Source: Stockgrid]
#'
#' @description Wrapper for Python function stocks.dps.pos from OpenBB Terminal SDK
#'
#' @param sortby (character length 1) Field for which to sort by, where 'sv': Short Vol. [1M],
#'     'sv_pct': Short Vol. %%, 'nsv': Net Short Vol. [1M],
#'     'nsv_dollar': Net Short Vol. ($100M), 'dpp': DP Position [1M],
#'     'dpp_dollar': DP Position ($1B)
#' @param ascend (logical length 1) Data in ascending order
#' @examples
#' stocks.dps.pos(sortby='dpp_dollar', ascend=FALSE)
#' @export
#* @get /stocks.dps.pos
stocks.dps.pos <- function(sortby = "dpp_dollar", ascend = FALSE) {
  o <- do.call(what=py$openbb$stocks$dps$pos, args=as.list(rlang::call_match())[-1])
  o
}


#' Get all FINRA ATS data, and parse most promising tickers based on linear regression
#'
#' @description Wrapper for Python function stocks.dps.prom from OpenBB Terminal SDK
#'
#' @param limit (integer length 1) Number of tickers to filter from entire ATS data based on the sum of the total weekly shares quantity
#' @param tier_ats (character length 1) Tier to process data from: T1, T2 or OTCE
#' @examples
#' stocks.dps.prom(limit=1000)
#' @export
#* @get /stocks.dps.prom
stocks.dps.prom <- function(limit = 1000, tier_ats = "T1") {
  o <- do.call(what=py$openbb$stocks$dps$prom, args=as.list(rlang::call_match())[-1])
  o
}


#' Display dark pool (ATS) data of tickers with growing trades activity. [Source: FINRA]
#'
#' @description Wrapper for Python function stocks.dps.prom_chart from OpenBB Terminal SDK
#'
#' @param input_limit (integer length 1) Number of tickers to filter from entire ATS data based on
#'     the sum of the total weekly shares quantity
#' @param limit (integer length 1) Number of tickers to display from most promising with
#'     better linear regression slope
#' @param tier (character length 1) Tier to process data from: T1, T2 or OTCE
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' stocks.dps.prom_chart(input_limit=1000, limit=10, tier='T1')
#' @export
#* @get /stocks.dps.prom_chart
stocks.dps.prom_chart <- function(input_limit = 1000, limit = 10, tier = "T1", export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$stocks$dps$prom_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Plots the short interest of a stock. This corresponds to the
#'
#' @description Wrapper for Python function stocks.dps.psi_q from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) ticker to get short interest from
#' @param nyse (logical length 1) data from NYSE if true, otherwise NASDAQ
#' @examples
#' stocks.dps.psi_q(symbol='AMZN', nyse=FALSE)
#' @export
#* @get /stocks.dps.psi_q
stocks.dps.psi_q <- function(symbol, nyse = FALSE) {
  o <- do.call(what=py$openbb$stocks$dps$psi_q, args=as.list(rlang::call_match())[-1])
  o
}


#' Plot the short interest of a stock. This corresponds to the
#'
#' @description Wrapper for Python function stocks.dps.psi_q_chart from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) ticker to get short interest from
#' @param nyse (logical length 1) data from NYSE if true, otherwise NASDAQ
#' @param limit (integer length 1) Number of past days to show short interest
#' @param raw (logical length 1) Flag to print raw data instead
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' stocks.dps.psi_q_chart(symbol='AMZN', nyse=FALSE, limit=10, raw=FALSE)
#' @export
#* @get /stocks.dps.psi_q_chart
stocks.dps.psi_q_chart <- function(symbol, nyse = FALSE, limit = 10, raw = FALSE, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$stocks$dps$psi_q_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get price vs short interest volume. [Source: Stockgrid]
#'
#' @description Wrapper for Python function stocks.dps.psi_sg from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Stock to get data from
#' @examples
#' stocks.dps.psi_sg(symbol='AMZN')
#' @export
#* @get /stocks.dps.psi_sg
stocks.dps.psi_sg <- function(symbol) {
  o <- do.call(what=py$openbb$stocks$dps$psi_sg, args=as.list(rlang::call_match())[-1])
  o
}


#' Plot price vs short interest volume. [Source: Stockgrid]
#'
#' @description Wrapper for Python function stocks.dps.psi_sg_chart from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Stock to plot for
#' @param limit (integer length 1) Number of last open market days to show
#' @param raw (logical length 1) Flag to print raw data instead
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' stocks.dps.psi_sg_chart(symbol='AMZN', limit=84, raw=FALSE)
#' @export
#* @get /stocks.dps.psi_sg_chart
stocks.dps.psi_sg_chart <- function(symbol, limit = 84, raw = FALSE, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$stocks$dps$psi_sg_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get most shorted stock screener [Source: Yahoo Finance]
#'
#' @description Wrapper for Python function stocks.dps.shorted from OpenBB Terminal SDK
#'
#' @export
#* @get /stocks.dps.shorted
stocks.dps.shorted <- function() {
  o <- do.call(what=py$openbb$stocks$dps$shorted, args=as.list(rlang::call_match())[-1])
  o
}


#' Get short interest and days to cover. [Source: Stockgrid]
#'
#' @description Wrapper for Python function stocks.dps.sidtc from OpenBB Terminal SDK
#'
#' @param sortby (character length 1) Field for which to sort by, where 'float': Float Short %%,
#'     'dtc': Days to Cover, 'si': Short Interest
#' @examples
#' stocks.dps.sidtc(sortby='float')
#' @export
#* @get /stocks.dps.sidtc
stocks.dps.sidtc <- function(sortby = "float") {
  o <- do.call(what=py$openbb$stocks$dps$sidtc, args=as.list(rlang::call_match())[-1])
  o
}


#' Get net short position. [Source: Stockgrid]
#'
#' @description Wrapper for Python function stocks.dps.spos from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Stock to get data from
#' @examples
#' stocks.dps.spos(symbol='AMZN')
#' @export
#* @get /stocks.dps.spos
stocks.dps.spos <- function(symbol) {
  o <- do.call(what=py$openbb$stocks$dps$spos, args=as.list(rlang::call_match())[-1])
  o
}


#' Plot net short position. [Source: Stockgrid]
#'
#' @description Wrapper for Python function stocks.dps.spos_chart from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Stock to plot for
#' @param limit (integer length 1) Number of last open market days to show
#' @param raw (logical length 1) Flag to print raw data instead
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' stocks.dps.spos_chart(symbol='AMZN', limit=84, raw=FALSE)
#' @export
#* @get /stocks.dps.spos_chart
stocks.dps.spos_chart <- function(symbol, limit = 84, raw = FALSE, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$stocks$dps$spos_chart, args=as.list(rlang::call_match())[-1])
  o
}


#'
#' @description Wrapper for Python function stocks.fa.about from OpenBB Terminal SDK
#'
#' @export
#* @get /stocks.fa.about
stocks.fa.about <- function() {
  o <- do.call(what=py$openbb$stocks$fa$about, args=as.list(rlang::call_match())[-1])
  o
}


#' Save time reading SEC filings with the help of machine learning. [Source: https://eclect.us]
#'
#' @description Wrapper for Python function stocks.fa.analysis from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Ticker symbol to see analysis of filings
#' @examples
#' stocks.fa.analysis(symbol='AMZN')
#' @export
#* @get /stocks.fa.analysis
stocks.fa.analysis <- function(symbol) {
  o <- do.call(what=py$openbb$stocks$fa$analysis, args=as.list(rlang::call_match())[-1])
  o
}


#' Get analyst data. [Source: Finviz]
#'
#' @description Wrapper for Python function stocks.fa.analyst from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Stock ticker symbol
#' @export
#* @get /stocks.fa.analyst
stocks.fa.analyst <- function(symbol) {
  o <- do.call(what=py$openbb$stocks$fa$analyst, args=as.list(rlang::call_match())[-1])
  o
}


#' Get balance sheet.
#'
#' @description Wrapper for Python function stocks.fa.balance from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Symbol to get balance sheet for
#' @param quarterly (logical length 1) Flag to get quarterly data
#' @param ratios (logical length 1) Flag to return data as a percent change.
#' @param source (character length 1) Data source for balance sheet, by default "YahooFinance"
#' @param limit (integer length 1) Number of statements to return (free tiers may be limited to 5 years)
#' @examples
#' stocks.fa.balance(symbol='AMZN', source='YahooFinance', quarterly=FALSE, ratios=FALSE, limit=10)
#' @export
#* @get /stocks.fa.balance
stocks.fa.balance <- function(symbol, quarterly = FALSE, ratios = FALSE, source = "YahooFinance", limit = 10) {
  o <- do.call(what=py$openbb$stocks$fa$balance, args=as.list(rlang::call_match())[-1])
  o
}


#' Get calendar earnings for ticker symbol
#'
#' @description Wrapper for Python function stocks.fa.cal from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Stock ticker symbol
#' @examples
#' stocks.fa.cal(symbol='AMZN')
#' @export
#* @get /stocks.fa.cal
stocks.fa.cal <- function(symbol) {
  o <- do.call(what=py$openbb$stocks$fa$cal, args=as.list(rlang::call_match())[-1])
  o
}


#' Get Cash Flow.
#'
#' @description Wrapper for Python function stocks.fa.cash from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Symbol to get cash flow for
#' @param quarterly (logical length 1) Flag to get quarterly data
#' @param ratios (logical length 1) Flag to return data as a percent change.
#' @param source (character length 1) Data source for cash flow, by default "YahooFinance"
#' @param limit (integer length 1) Number of statements to return (free tiers may be limited to 5 years)
#' @examples
#' stocks.fa.cash(symbol='AMZN', source='YahooFinance', quarterly=FALSE, ratios=FALSE, limit=10)
#' @export
#* @get /stocks.fa.cash
stocks.fa.cash <- function(symbol, quarterly = FALSE, ratios = FALSE, source = "YahooFinance", limit = 10) {
  o <- do.call(what=py$openbb$stocks$fa$cash, args=as.list(rlang::call_match())[-1])
  o
}


#' Print customers from ticker provided
#'
#' @description Wrapper for Python function stocks.fa.customer from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Ticker to select customers from
#' @param limit (integer length 1) The maximum number of rows to show
#' @export
#* @get /stocks.fa.customer
stocks.fa.customer <- function(symbol, limit = 50) {
  o <- do.call(what=py$openbb$stocks$fa$customer, args=as.list(rlang::call_match())[-1])
  o
}


#' Get fundamental data from finviz
#'
#' @description Wrapper for Python function stocks.fa.data from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Stock ticker symbol
#' @examples
#' stocks.fa.data(symbol='AMZN')
#' @export
#* @get /stocks.fa.data
stocks.fa.data <- function(symbol) {
  o <- do.call(what=py$openbb$stocks$fa$data, args=as.list(rlang::call_match())[-1])
  o
}


#' Get stocks dcf from FMP
#'
#' @description Wrapper for Python function stocks.fa.dcf from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Stock ticker symbol
#' @param limit (integer length 1) Number to get
#' @param quarterly (logical length 1) Flag to get quarterly data, by default False
#' @examples
#' stocks.fa.dcf(symbol='AMZN', limit=5, quarterly=FALSE)
#' @export
#* @get /stocks.fa.dcf
stocks.fa.dcf <- function(symbol, limit = 5, quarterly = FALSE) {
  o <- do.call(what=py$openbb$stocks$fa$dcf, args=as.list(rlang::call_match())[-1])
  o
}


#' Get stocks dcf from FMP
#'
#' @description Wrapper for Python function stocks.fa.dcfc from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Stock ticker symbol
#' @param limit (integer length 1) Number to get
#' @param quarterly (logical length 1) Flag to get quarterly data, by default False
#' @export
#* @get /stocks.fa.dcfc
stocks.fa.dcfc <- function(symbol, limit = 5, quarterly = FALSE) {
  o <- do.call(what=py$openbb$stocks$fa$dcfc, args=as.list(rlang::call_match())[-1])
  o
}


#' Get historical dividend for ticker
#'
#' @description Wrapper for Python function stocks.fa.divs from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Ticker symbol to get dividend for
#' @examples
#' stocks.fa.divs(symbol='AMZN')
#' @export
#* @get /stocks.fa.divs
stocks.fa.divs <- function(symbol) {
  o <- do.call(what=py$openbb$stocks$fa$divs, args=as.list(rlang::call_match())[-1])
  o
}


#' Display historical dividends
#'
#' @description Wrapper for Python function stocks.fa.divs_chart from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Stock ticker symbol
#' @param limit (integer length 1) Number to show
#' @param plot (logical length 1) Plots historical data
#' @param export (character length 1) Format to export data
#' @examples
#' stocks.fa.divs_chart(symbol='AMZN', limit=12, plot=TRUE)
#' @export
#* @get /stocks.fa.divs_chart
stocks.fa.divs_chart <- function(symbol, limit = 12, plot = TRUE, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$stocks$fa$divs_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get dupont ratios
#'
#' @description Wrapper for Python function stocks.fa.dupont from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Stock ticker symbol
#' @examples
#' stocks.fa.dupont(symbol='AMZN')
#' @export
#* @get /stocks.fa.dupont
stocks.fa.dupont <- function(symbol) {
  o <- do.call(what=py$openbb$stocks$fa$dupont, args=as.list(rlang::call_match())[-1])
  o
}


#' Get earnings data.
#'
#' @description Wrapper for Python function stocks.fa.earnings from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Stock ticker
#' @param source (character length 1) Source to use, by default "AlphaVantage"
#' @param quarterly (logical length 1) Flag to get quarterly data (AlphaVantage only), by default False.
#' @examples
#' stocks.fa.earnings(symbol='AMZN', source='YahooFinance', quarterly=FALSE)
#' @export
#* @get /stocks.fa.earnings
stocks.fa.earnings <- function(symbol, source = "YahooFinance", quarterly = FALSE) {
  o <- do.call(what=py$openbb$stocks$fa$earnings, args=as.list(rlang::call_match())[-1])
  o
}


#' Financial Modeling Prep ticker enterprise
#'
#' @description Wrapper for Python function stocks.fa.enterprise from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Fundamental analysis ticker symbol
#' @param limit (integer length 1) Number to get
#' @param quarterly (logical length 1) Flag to get quarterly data
#' @examples
#' stocks.fa.enterprise(symbol='AMZN', limit=5, quarterly=FALSE)
#' @export
#* @get /stocks.fa.enterprise
stocks.fa.enterprise <- function(symbol, limit = 5, quarterly = FALSE) {
  o <- do.call(what=py$openbb$stocks$fa$enterprise, args=as.list(rlang::call_match())[-1])
  o
}


#' Takes the ticker, asks for seekingalphaID and gets eps estimates
#'
#' @description Wrapper for Python function stocks.fa.epsfc from OpenBB Terminal SDK
#'
#' @param ticker (character length 1) ticker of company
#' @export
#* @get /stocks.fa.epsfc
stocks.fa.epsfc <- function(ticker) {
  o <- do.call(what=py$openbb$stocks$fa$epsfc, args=as.list(rlang::call_match())[-1])
  o
}


#' Get analysts' estimates for a given ticker. [Source: Business Insider]
#'
#' @description Wrapper for Python function stocks.fa.est from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Ticker to get analysts' estimates
#' @export
#* @get /stocks.fa.est
stocks.fa.est <- function(symbol) {
  o <- do.call(what=py$openbb$stocks$fa$est, args=as.list(rlang::call_match())[-1])
  o
}


#' Use Fama and French to get the cost of equity for a company
#'
#' @description Wrapper for Python function stocks.fa.fama_coe from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) The ticker symbol to be analyzed
#' @examples
#' stocks.fa.fama_coe(symbol='AMZN')
#' @export
#* @get /stocks.fa.fama_coe
stocks.fa.fama_coe <- function(symbol) {
  o <- do.call(what=py$openbb$stocks$fa$fama_coe, args=as.list(rlang::call_match())[-1])
  o
}


#' Get Fama French data
#'
#' @description Wrapper for Python function stocks.fa.fama_raw from OpenBB Terminal SDK
#'
#' @export
#* @get /stocks.fa.fama_raw
stocks.fa.fama_raw <- function() {
  o <- do.call(what=py$openbb$stocks$fa$fama_raw, args=as.list(rlang::call_match())[-1])
  o
}


#' Get fraud ratios based on fundamentals
#'
#' @description Wrapper for Python function stocks.fa.fraud from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Stock ticker symbol
#' @param detail (logical length 1) Whether to provide extra m-score details
#' @examples
#' stocks.fa.fraud(symbol='AMZN', detail=FALSE)
#' @export
#* @get /stocks.fa.fraud
stocks.fa.fraud <- function(symbol, detail = FALSE) {
  o <- do.call(what=py$openbb$stocks$fa$fraud, args=as.list(rlang::call_match())[-1])
  o
}


#' Get financial statement growth
#'
#' @description Wrapper for Python function stocks.fa.growth from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Stock ticker symbol
#' @param limit (integer length 1) Number to get
#' @param quarterly (logical length 1) Flag to get quarterly data, by default False
#' @examples
#' stocks.fa.growth(symbol='AMZN', limit=5, quarterly=FALSE)
#' @export
#* @get /stocks.fa.growth
stocks.fa.growth <- function(symbol, limit = 5, quarterly = FALSE) {
  o <- do.call(what=py$openbb$stocks$fa$growth, args=as.list(rlang::call_match())[-1])
  o
}


#' Get 5 year monthly historical performance for a ticker with dividends filtered
#'
#' @description Wrapper for Python function stocks.fa.historical_5 from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) The ticker symbol to be analyzed
#' @examples
#' stocks.fa.historical_5(symbol='AMZN')
#' @export
#* @get /stocks.fa.historical_5
stocks.fa.historical_5 <- function(symbol) {
  o <- do.call(what=py$openbb$stocks$fa$historical_5, args=as.list(rlang::call_match())[-1])
  o
}


#' Get income statement.
#'
#' @description Wrapper for Python function stocks.fa.income from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Symbol to get income statement for
#' @param quarterly (logical length 1) Flag to get quarterly data
#' @param ratios (logical length 1) Flag to return data as a percent change.
#' @param source (character length 1) Data source for income statement, by default "YahooFinance"
#' @param limit (integer length 1) Number of statements to return (free tiers may be limited to 5 years)
#' @examples
#' stocks.fa.income(symbol='AMZN', source='YahooFinance', quarterly=FALSE, ratios=FALSE, limit=10)
#' @export
#* @get /stocks.fa.income
stocks.fa.income <- function(symbol, quarterly = FALSE, ratios = FALSE, source = "YahooFinance", limit = 10) {
  o <- do.call(what=py$openbb$stocks$fa$income, args=as.list(rlang::call_match())[-1])
  o
}


#' Gets ticker symbol info
#'
#' @description Wrapper for Python function stocks.fa.info from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Stock ticker symbol
#' @examples
#' stocks.fa.info(symbol='AMZN')
#' @export
#* @get /stocks.fa.info
stocks.fa.info <- function(symbol) {
  o <- do.call(what=py$openbb$stocks$fa$info, args=as.list(rlang::call_match())[-1])
  o
}


#' Get key metrics from overview
#'
#' @description Wrapper for Python function stocks.fa.key from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Stock ticker symbol
#' @examples
#' stocks.fa.key(symbol='AMZN')
#' @export
#* @get /stocks.fa.key
stocks.fa.key <- function(symbol) {
  o <- do.call(what=py$openbb$stocks$fa$key, args=as.list(rlang::call_match())[-1])
  o
}


#' Get key metrics
#'
#' @description Wrapper for Python function stocks.fa.metrics from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Stock ticker symbol
#' @param limit (integer length 1) Number to get
#' @param quarterly (logical length 1) Flag to get quarterly data, by default False
#' @examples
#' stocks.fa.metrics(symbol='AMZN', limit=5, quarterly=FALSE)
#' @export
#* @get /stocks.fa.metrics
stocks.fa.metrics <- function(symbol, limit = 5, quarterly = FALSE) {
  o <- do.call(what=py$openbb$stocks$fa$metrics, args=as.list(rlang::call_match())[-1])
  o
}


#' Get company managers from Business Insider
#'
#' @description Wrapper for Python function stocks.fa.mgmt from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Stock ticker symbol
#' @examples
#' stocks.fa.mgmt(symbol='AMZN')
#' @export
#* @get /stocks.fa.mgmt
stocks.fa.mgmt <- function(symbol) {
  o <- do.call(what=py$openbb$stocks$fa$mgmt, args=as.list(rlang::call_match())[-1])
  o
}


#' Get market cap over time for ticker. [Source: Yahoo Finance]
#'
#' @description Wrapper for Python function stocks.fa.mktcap from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Ticker to get market cap over time
#' @examples
#' stocks.fa.mktcap(symbol='AMZN')
#' @export
#* @get /stocks.fa.mktcap
stocks.fa.mktcap <- function(symbol, start_date) {
  o <- do.call(what=py$openbb$stocks$fa$mktcap, args=as.list(rlang::call_match())[-1])
  o
}


#' Display market cap over time. [Source: Yahoo Finance]
#'
#' @description Wrapper for Python function stocks.fa.mktcap_chart from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Stock ticker symbol
#' @param export (character length 1) Format to export data
#' @examples
#' stocks.fa.mktcap_chart(symbol='AMZN')
#' @export
#* @get /stocks.fa.mktcap_chart
stocks.fa.mktcap_chart <- function(symbol, start_date, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$stocks$fa$mktcap_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get news from Finviz
#'
#' @description Wrapper for Python function stocks.fa.news from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Stock ticker symbol
#' @export
#* @get /stocks.fa.news
stocks.fa.news <- function(symbol) {
  o <- do.call(what=py$openbb$stocks$fa$news, args=as.list(rlang::call_match())[-1])
  o
}


#' Get alpha vantage company overview
#'
#' @description Wrapper for Python function stocks.fa.overview from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Stock ticker symbol
#' @examples
#' stocks.fa.overview(symbol='AMZN')
#' @export
#* @get /stocks.fa.overview
stocks.fa.overview <- function(symbol) {
  o <- do.call(what=py$openbb$stocks$fa$overview, args=as.list(rlang::call_match())[-1])
  o
}


#' Get ticker profile from FMP
#'
#' @description Wrapper for Python function stocks.fa.profile from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Stock ticker symbol
#' @examples
#' stocks.fa.profile(symbol='AMZN')
#' @export
#* @get /stocks.fa.profile
stocks.fa.profile <- function(symbol) {
  o <- do.call(what=py$openbb$stocks$fa$profile, args=as.list(rlang::call_match())[-1])
  o
}


#' Get analysts' price targets for a given stock. [Source: Business Insider]
#'
#' @description Wrapper for Python function stocks.fa.pt from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Ticker symbol
#' @export
#* @get /stocks.fa.pt
stocks.fa.pt <- function(symbol) {
  o <- do.call(what=py$openbb$stocks$fa$pt, args=as.list(rlang::call_match())[-1])
  o
}


#' Display analysts' price targets for a given stock. [Source: Business Insider]
#'
#' @description Wrapper for Python function stocks.fa.pt_chart from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Due diligence ticker symbol
#' @param limit (integer length 1) Number of latest price targets from analysts to print
#' @param raw (logical length 1) Display raw data only
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @export
#* @get /stocks.fa.pt_chart
stocks.fa.pt_chart <- function(symbol, data, start_date, limit = 10, raw = FALSE, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$stocks$fa$pt_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get ratings for a given ticker. [Source: Financial Modeling Prep]
#'
#' @description Wrapper for Python function stocks.fa.rating from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Stock ticker symbol
#' @export
#* @get /stocks.fa.rating
stocks.fa.rating <- function(symbol) {
  o <- do.call(what=py$openbb$stocks$fa$rating, args=as.list(rlang::call_match())[-1])
  o
}


#' Get key ratios
#'
#' @description Wrapper for Python function stocks.fa.ratios from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Stock ticker symbol
#' @param limit (integer length 1) Number to get
#' @param quarterly (logical length 1) Flag to get quarterly data, by default False
#' @examples
#' stocks.fa.ratios(symbol='AMZN', limit=5, quarterly=FALSE)
#' @export
#* @get /stocks.fa.ratios
stocks.fa.ratios <- function(symbol, limit = 5, quarterly = FALSE) {
  o <- do.call(what=py$openbb$stocks$fa$ratios, args=as.list(rlang::call_match())[-1])
  o
}


#' Takes the ticker, asks for seekingalphaID and gets rev estimates
#'
#' @description Wrapper for Python function stocks.fa.revfc from OpenBB Terminal SDK
#'
#' @param ticker (character length 1) ticker of company
#' @export
#* @get /stocks.fa.revfc
stocks.fa.revfc <- function(ticker) {
  o <- do.call(what=py$openbb$stocks$fa$revfc, args=as.list(rlang::call_match())[-1])
  o
}


#' Get rating over time data. [Source: Finnhub]
#'
#' @description Wrapper for Python function stocks.fa.rot from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Ticker symbol to get ratings from
#' @export
#* @get /stocks.fa.rot
stocks.fa.rot <- function(symbol) {
  o <- do.call(what=py$openbb$stocks$fa$rot, args=as.list(rlang::call_match())[-1])
  o
}


#' Rating over time (monthly). [Source: Finnhub]
#'
#' @description Wrapper for Python function stocks.fa.rot_chart from OpenBB Terminal SDK
#'
#' @param limit (integer length 1) Number of last months ratings to show
#' @param raw (logical length 1) Display raw data only
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @export
#* @get /stocks.fa.rot_chart
stocks.fa.rot_chart <- function(symbol, limit = 10, raw = FALSE, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$stocks$fa$rot_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Gets value score from fmp
#'
#' @description Wrapper for Python function stocks.fa.score from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Stock ticker symbol
#' @param years (integer length 1) The amount of years to use to calculate the score
#' @examples
#' stocks.fa.score(symbol='AMZN')
#' @export
#* @get /stocks.fa.score
stocks.fa.score <- function(symbol, years) {
  o <- do.call(what=py$openbb$stocks$fa$score, args=as.list(rlang::call_match())[-1])
  o
}


#' Get SEC filings for a given stock ticker. [Source: Market Watch]
#'
#' @description Wrapper for Python function stocks.fa.sec from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Stock ticker symbol
#' @export
#* @get /stocks.fa.sec
stocks.fa.sec <- function(symbol) {
  o <- do.call(what=py$openbb$stocks$fa$sec, args=as.list(rlang::call_match())[-1])
  o
}


#' Get SEC Filings RSS feed, disseminated by FMP
#'
#' @description Wrapper for Python function stocks.fa.sec_fmp from OpenBB Terminal SDK
#'
#' @param pages (integer length 1) The range of most-rececnt pages to get entries from (1000 per page; maximum of 30 pages)
#' @export
#* @get /stocks.fa.sec_fmp
stocks.fa.sec_fmp <- function(pages = 1) {
  o <- do.call(what=py$openbb$stocks$fa$sec_fmp, args=as.list(rlang::call_match())[-1])
  o
}


#' Display recent forms submitted to the SEC
#'
#' @description Wrapper for Python function stocks.fa.sec_fmp_chart from OpenBB Terminal SDK
#'
#' @param pages (integer length 1) The range of most-rececnt pages to get entries from (1000 per page, max 30 pages)
#' @param limit (integer length 1) Limit the number of entries to display (default: 20)
#' @param export (character length 1) Export data as csv, json, or xlsx
#' @export
#* @get /stocks.fa.sec_fmp_chart
stocks.fa.sec_fmp_chart <- function(ticker = "", pages = 1, limit = 20, export = "", sheet_name) {
  o <- do.call(what=py$openbb$stocks$fa$sec_fmp_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get shareholders from yahoo
#'
#' @description Wrapper for Python function stocks.fa.shrs from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Stock ticker symbol
#' @param holder (character length 1) Which holder to get table for
#' @examples
#' stocks.fa.shrs(symbol='AMZN', holder='institutional')
#' @export
#* @get /stocks.fa.shrs
stocks.fa.shrs <- function(symbol, holder = "institutional") {
  o <- do.call(what=py$openbb$stocks$fa$shrs, args=as.list(rlang::call_match())[-1])
  o
}


#' Get dataframes for similar companies
#'
#' @description Wrapper for Python function stocks.fa.similar_dfs from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) The ticker symbol to create a dataframe for
#' @param n (integer length 1) The number of similar companies to produce
#' @param no_filter (logical length 1) True means that we do not filter based on market cap
#' @examples
#' stocks.fa.similar_dfs(symbol='AMZN', no_filter=FALSE)
#' @export
#* @get /stocks.fa.similar_dfs
stocks.fa.similar_dfs <- function(symbol, info, n, no_filter = FALSE) {
  o <- do.call(what=py$openbb$stocks$fa$similar_dfs, args=as.list(rlang::call_match())[-1])
  o
}


#' Get splits and reverse splits events. [Source: Yahoo Finance]
#'
#' @description Wrapper for Python function stocks.fa.splits from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Ticker to get forward and reverse splits
#' @examples
#' stocks.fa.splits(symbol='AMZN')
#' @export
#* @get /stocks.fa.splits
stocks.fa.splits <- function(symbol) {
  o <- do.call(what=py$openbb$stocks$fa$splits, args=as.list(rlang::call_match())[-1])
  o
}


#' Display splits and reverse splits events. [Source: Yahoo Finance]
#'
#' @description Wrapper for Python function stocks.fa.splits_chart from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Stock ticker symbol
#' @param export (character length 1) Format to export data
#' @examples
#' stocks.fa.splits_chart(symbol='AMZN')
#' @export
#* @get /stocks.fa.splits_chart
stocks.fa.splits_chart <- function(symbol, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$stocks$fa$splits_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get suppliers from ticker provided. [Source: CSIMarket]
#'
#' @description Wrapper for Python function stocks.fa.supplier from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Ticker to select suppliers from
#' @param limit (integer length 1) The maximum number of rows to show
#' @export
#* @get /stocks.fa.supplier
stocks.fa.supplier <- function(symbol, limit = 50) {
  o <- do.call(what=py$openbb$stocks$fa$supplier, args=as.list(rlang::call_match())[-1])
  o
}


#'
#' @description Wrapper for Python function stocks.gov.about from OpenBB Terminal SDK
#'
#' @export
#* @get /stocks.gov.about
stocks.gov.about <- function() {
  o <- do.call(what=py$openbb$stocks$gov$about, args=as.list(rlang::call_match())[-1])
  o
}


#' Get government contracts for ticker [Source: quiverquant.com]
#'
#' @description Wrapper for Python function stocks.gov.contracts from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Ticker to get congress trading data from
#' @param past_transaction_days (integer length 1) Number of days to get transactions for
#' @examples
#' stocks.gov.contracts(symbol='AMZN', past_transaction_days=10)
#' @export
#* @get /stocks.gov.contracts
stocks.gov.contracts <- function(symbol, past_transaction_days = 10) {
  o <- do.call(what=py$openbb$stocks$gov$contracts, args=as.list(rlang::call_match())[-1])
  o
}


#' Show government contracts for ticker [Source: quiverquant.com]
#'
#' @description Wrapper for Python function stocks.gov.contracts_chart from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Ticker to get congress trading data from
#' @param past_transaction_days (integer length 1) Number of days to get transactions for
#' @param raw (logical length 1) Flag to display raw data
#' @param export (character length 1) Format to export data
#' @examples
#' stocks.gov.contracts_chart(symbol='AMZN', past_transaction_days=10, raw=FALSE)
#' @export
#* @get /stocks.gov.contracts_chart
stocks.gov.contracts_chart <- function(symbol, past_transaction_days = 10, raw = FALSE, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$stocks$gov$contracts_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Returns the most recent transactions by members of government
#'
#' @description Wrapper for Python function stocks.gov.government_trading from OpenBB Terminal SDK
#'
#' @param gov_type (character length 1) Type of government data between:
#'     'congress', 'senate', 'house', 'contracts', 'quarter-contracts' and 'corporate-lobbying'
#' @param symbol (character length 1) Ticker symbol to get congress trading data from
#' @examples
#' stocks.gov.government_trading(gov_type='congress')
#' @export
#* @get /stocks.gov.government_trading
stocks.gov.government_trading <- function(gov_type = "congress", symbol = "") {
  o <- do.call(what=py$openbb$stocks$gov$government_trading, args=as.list(rlang::call_match())[-1])
  o
}


#' Government trading for specific ticker [Source: quiverquant.com]
#'
#' @description Wrapper for Python function stocks.gov.gtrades from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Ticker symbol to get congress trading data from
#' @param gov_type (character length 1) Type of government data between: congress, senate and house
#' @param past_transactions_months (integer length 1) Number of months to get transactions for
#' @examples
#' stocks.gov.gtrades(symbol='AMZN', gov_type='congress', past_transactions_months=6)
#' @export
#* @get /stocks.gov.gtrades
stocks.gov.gtrades <- function(symbol, gov_type = "congress", past_transactions_months = 6) {
  o <- do.call(what=py$openbb$stocks$gov$gtrades, args=as.list(rlang::call_match())[-1])
  o
}


#' Government trading for specific ticker [Source: quiverquant.com]
#'
#' @description Wrapper for Python function stocks.gov.gtrades_chart from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Ticker symbol to get congress trading data from
#' @param gov_type (character length 1) Type of government data between: congress, senate and house
#' @param past_transactions_months (integer length 1) Number of months to get transactions for
#' @param raw (logical length 1) Show raw output of trades
#' @param export (character length 1) Format to export data
#' @examples
#' stocks.gov.gtrades_chart(symbol='AMZN', gov_type='congress', past_transactions_months=6, raw=FALSE)
#' @export
#* @get /stocks.gov.gtrades_chart
stocks.gov.gtrades_chart <- function(symbol, gov_type = "congress", past_transactions_months = 6, raw = FALSE, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$stocks$gov$gtrades_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get historical quarterly government contracts [Source: quiverquant.com]
#'
#' @description Wrapper for Python function stocks.gov.histcont from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Ticker symbol to get congress trading data from
#' @examples
#' stocks.gov.histcont(symbol='AMZN')
#' @export
#* @get /stocks.gov.histcont
stocks.gov.histcont <- function(symbol) {
  o <- do.call(what=py$openbb$stocks$gov$histcont, args=as.list(rlang::call_match())[-1])
  o
}


#' Show historical quarterly government contracts [Source: quiverquant.com]
#'
#' @description Wrapper for Python function stocks.gov.histcont_chart from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Ticker symbol to get congress trading data from
#' @param raw (logical length 1) Flag to display raw data
#' @param export (character length 1) Format to export data
#' @examples
#' stocks.gov.histcont_chart(symbol='AMZN', raw=FALSE)
#' @export
#* @get /stocks.gov.histcont_chart
stocks.gov.histcont_chart <- function(symbol, raw = FALSE, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$stocks$gov$histcont_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get last government contracts [Source: quiverquant.com]
#'
#' @description Wrapper for Python function stocks.gov.lastcontracts from OpenBB Terminal SDK
#'
#' @param past_transaction_days (integer length 1) Number of days to look back
#' @examples
#' stocks.gov.lastcontracts(past_transaction_days=2)
#' @export
#* @get /stocks.gov.lastcontracts
stocks.gov.lastcontracts <- function(past_transaction_days = 2) {
  o <- do.call(what=py$openbb$stocks$gov$lastcontracts, args=as.list(rlang::call_match())[-1])
  o
}


#' Last government contracts [Source: quiverquant.com]
#'
#' @description Wrapper for Python function stocks.gov.lastcontracts_chart from OpenBB Terminal SDK
#'
#' @param past_transaction_days (integer length 1) Number of days to look back
#' @param limit (integer length 1) Number of contracts to show
#' @param sum_contracts (logical length 1) Flag to show total amount of contracts given out.
#' @param export (character length 1) Format to export data
#' @examples
#' stocks.gov.lastcontracts_chart(past_transaction_days=2, limit=20, sum_contracts=FALSE)
#' @export
#* @get /stocks.gov.lastcontracts_chart
stocks.gov.lastcontracts_chart <- function(past_transaction_days = 2, limit = 20, sum_contracts = FALSE, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$stocks$gov$lastcontracts_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get last government trading [Source: quiverquant.com]
#'
#' @description Wrapper for Python function stocks.gov.lasttrades from OpenBB Terminal SDK
#'
#' @param gov_type (character length 1) Type of government data between: congress, senate and house
#' @param limit (integer length 1) Number of days to look back
#' @param representative (character length 1) Specific representative to look at
#' @examples
#' stocks.gov.lasttrades(gov_type='congress', limit=-1)
#' @export
#* @get /stocks.gov.lasttrades
stocks.gov.lasttrades <- function(gov_type = "congress", limit = -1, representative = "") {
  o <- do.call(what=py$openbb$stocks$gov$lasttrades, args=as.list(rlang::call_match())[-1])
  o
}


#' Corporate lobbying details
#'
#' @description Wrapper for Python function stocks.gov.lobbying from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Ticker symbol to get corporate lobbying data from
#' @param limit (integer length 1) Number of events to show
#' @examples
#' stocks.gov.lobbying(symbol='AMZN', limit=10)
#' @export
#* @get /stocks.gov.lobbying
stocks.gov.lobbying <- function(symbol, limit = 10) {
  o <- do.call(what=py$openbb$stocks$gov$lobbying, args=as.list(rlang::call_match())[-1])
  o
}


#' Analyzes quarterly contracts by ticker
#'
#' @description Wrapper for Python function stocks.gov.qtrcontracts from OpenBB Terminal SDK
#'
#' @param analysis (character length 1) How to analyze.  Either gives total amount or sorts by high/low momentum.
#' @param limit (integer length 1) Number to return, by default 5
#' @examples
#' stocks.gov.qtrcontracts(analysis='total', limit=5)
#' @export
#* @get /stocks.gov.qtrcontracts
stocks.gov.qtrcontracts <- function(analysis = "total", limit = 5) {
  o <- do.call(what=py$openbb$stocks$gov$qtrcontracts, args=as.list(rlang::call_match())[-1])
  o
}


#' Quarterly contracts [Source: quiverquant.com]
#'
#' @description Wrapper for Python function stocks.gov.qtrcontracts_chart from OpenBB Terminal SDK
#'
#' @param analysis (character length 1) Analysis to perform.  Either 'total', 'upmom' 'downmom'
#' @param limit (integer length 1) Number to show
#' @param raw (logical length 1) Flag to display raw data
#' @param export (character length 1) Format to export data
#' @examples
#' stocks.gov.qtrcontracts_chart(analysis='total', limit=5, raw=FALSE)
#' @export
#* @get /stocks.gov.qtrcontracts_chart
stocks.gov.qtrcontracts_chart <- function(analysis = "total", limit = 5, raw = FALSE, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$stocks$gov$qtrcontracts_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get top buy government trading [Source: quiverquant.com]
#'
#' @description Wrapper for Python function stocks.gov.topbuys from OpenBB Terminal SDK
#'
#' @param gov_type (character length 1) Type of government data between: congress, senate and house
#' @param past_transactions_months (integer length 1) Number of months to get trading for
#' @examples
#' stocks.gov.topbuys(gov_type='congress', past_transactions_months=6)
#' @export
#* @get /stocks.gov.topbuys
stocks.gov.topbuys <- function(gov_type = "congress", past_transactions_months = 6) {
  o <- do.call(what=py$openbb$stocks$gov$topbuys, args=as.list(rlang::call_match())[-1])
  o
}


#' Top buy government trading [Source: quiverquant.com]
#'
#' @description Wrapper for Python function stocks.gov.topbuys_chart from OpenBB Terminal SDK
#'
#' @param gov_type (character length 1) Type of government data between: congress, senate and house
#' @param past_transactions_months (integer length 1) Number of months to get trading for
#' @param limit (integer length 1) Number of tickers to show
#' @param raw (logical length 1) Display raw data
#' @param export (character length 1) Format to export data
#' @examples
#' stocks.gov.topbuys_chart(gov_type='congress', past_transactions_months=6, limit=10, raw=FALSE)
#' @export
#* @get /stocks.gov.topbuys_chart
stocks.gov.topbuys_chart <- function(gov_type = "congress", past_transactions_months = 6, limit = 10, raw = FALSE, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$stocks$gov$topbuys_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Corporate lobbying details
#'
#' @description Wrapper for Python function stocks.gov.toplobbying from OpenBB Terminal SDK
#'
#' @export
#* @get /stocks.gov.toplobbying
stocks.gov.toplobbying <- function() {
  o <- do.call(what=py$openbb$stocks$gov$toplobbying, args=as.list(rlang::call_match())[-1])
  o
}


#' Top lobbying tickers based on total spent
#'
#' @description Wrapper for Python function stocks.gov.toplobbying_chart from OpenBB Terminal SDK
#'
#' @param limit (integer length 1) Number of tickers to show
#' @param raw (logical length 1) Show raw data
#' @param export (character length 1) Format to export data
#' @examples
#' stocks.gov.toplobbying_chart(limit=10, raw=FALSE)
#' @export
#* @get /stocks.gov.toplobbying_chart
stocks.gov.toplobbying_chart <- function(limit = 10, raw = FALSE, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$stocks$gov$toplobbying_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get top sell government trading [Source: quiverquant.com]
#'
#' @description Wrapper for Python function stocks.gov.topsells from OpenBB Terminal SDK
#'
#' @param gov_type (character length 1) Type of government data between: congress, senate and house
#' @param past_transactions_months (integer length 1) Number of months to get trading for
#' @examples
#' stocks.gov.topsells(gov_type='congress', past_transactions_months=6)
#' @export
#* @get /stocks.gov.topsells
stocks.gov.topsells <- function(gov_type = "congress", past_transactions_months = 6) {
  o <- do.call(what=py$openbb$stocks$gov$topsells, args=as.list(rlang::call_match())[-1])
  o
}


#' Top sell government trading [Source: quiverquant.com]
#'
#' @description Wrapper for Python function stocks.gov.topsells_chart from OpenBB Terminal SDK
#'
#' @param gov_type (character length 1) Type of government data between: congress, senate and house
#' @param past_transactions_months (integer length 1) Number of months to get trading for
#' @param limit (integer length 1) Number of tickers to show
#' @param raw (logical length 1) Display raw data
#' @param export (character length 1) Format to export data
#' @examples
#' stocks.gov.topsells_chart(gov_type='congress', past_transactions_months=6, limit=10, raw=FALSE)
#' @export
#* @get /stocks.gov.topsells_chart
stocks.gov.topsells_chart <- function(gov_type = "congress", past_transactions_months = 6, limit = 10, raw = FALSE, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$stocks$gov$topsells_chart, args=as.list(rlang::call_match())[-1])
  o
}


#'
#' @description Wrapper for Python function stocks.ins.about from OpenBB Terminal SDK
#'
#' @export
#* @get /stocks.ins.about
stocks.ins.about <- function() {
  o <- do.call(what=py$openbb$stocks$ins$about, args=as.list(rlang::call_match())[-1])
  o
}


#' Get insider activity. [Source: Business Insider]
#'
#' @description Wrapper for Python function stocks.ins.act from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Ticker symbol to get insider activity data from
#' @examples
#' stocks.ins.act(symbol='AMZN')
#' @export
#* @get /stocks.ins.act
stocks.ins.act <- function(symbol) {
  o <- do.call(what=py$openbb$stocks$ins$act, args=as.list(rlang::call_match())[-1])
  o
}


#' Display insider activity. [Source: Business Insider]
#'
#' @description Wrapper for Python function stocks.ins.act_chart from OpenBB Terminal SDK
#'
#' @param data (data.frame) Stock dataframe
#' @param symbol (character length 1) Due diligence ticker symbol
#' @param interval (character length 1) Stock data interval
#' @param limit (integer length 1) Number of latest days of inside activity
#' @param raw (logical length 1) Print to console
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' stocks.ins.act_chart(symbol='AMZN', interval='1440min', limit=10, raw=FALSE)
#' @export
#* @get /stocks.ins.act_chart
stocks.ins.act_chart <- function(data, symbol, start_date, interval = "1440min", limit = 10, raw = FALSE, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$stocks$ins$act_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get latest CEO/CFO purchases > 25k
#'
#' @description Wrapper for Python function stocks.ins.blcp from OpenBB Terminal SDK
#'
#' @export
#* @get /stocks.ins.blcp
stocks.ins.blcp <- function() {
  o <- do.call(what=py$openbb$stocks$ins$blcp, args=as.list(rlang::call_match())[-1])
  o
}


#' Get latest CEO/CFO sales > 100k
#'
#' @description Wrapper for Python function stocks.ins.blcs from OpenBB Terminal SDK
#'
#' @export
#* @get /stocks.ins.blcs
stocks.ins.blcs <- function() {
  o <- do.call(what=py$openbb$stocks$ins$blcs, args=as.list(rlang::call_match())[-1])
  o
}


#' Get latest insider purchases > 25k
#'
#' @description Wrapper for Python function stocks.ins.blip from OpenBB Terminal SDK
#'
#' @export
#* @get /stocks.ins.blip
stocks.ins.blip <- function() {
  o <- do.call(what=py$openbb$stocks$ins$blip, args=as.list(rlang::call_match())[-1])
  o
}


#' Get latest insider sales > 100k
#'
#' @description Wrapper for Python function stocks.ins.blis from OpenBB Terminal SDK
#'
#' @export
#* @get /stocks.ins.blis
stocks.ins.blis <- function() {
  o <- do.call(what=py$openbb$stocks$ins$blis, args=as.list(rlang::call_match())[-1])
  o
}


#' Get latest officer purchases > 25k
#'
#' @description Wrapper for Python function stocks.ins.blop from OpenBB Terminal SDK
#'
#' @export
#* @get /stocks.ins.blop
stocks.ins.blop <- function() {
  o <- do.call(what=py$openbb$stocks$ins$blop, args=as.list(rlang::call_match())[-1])
  o
}


#' Get latest officer sales > 100k
#'
#' @description Wrapper for Python function stocks.ins.blos from OpenBB Terminal SDK
#'
#' @export
#* @get /stocks.ins.blos
stocks.ins.blos <- function() {
  o <- do.call(what=py$openbb$stocks$ins$blos, args=as.list(rlang::call_match())[-1])
  o
}


#' GEt insider trades based on preset filter
#'
#' @description Wrapper for Python function stocks.ins.filter from OpenBB Terminal SDK
#'
#' @param preset (character length 1) Name of preset filter
#' @export
#* @get /stocks.ins.filter
stocks.ins.filter <- function(preset) {
  o <- do.call(what=py$openbb$stocks$ins$filter, args=as.list(rlang::call_match())[-1])
  o
}


#' Get latest cluster buys
#'
#' @description Wrapper for Python function stocks.ins.lcb from OpenBB Terminal SDK
#'
#' @export
#* @get /stocks.ins.lcb
stocks.ins.lcb <- function() {
  o <- do.call(what=py$openbb$stocks$ins$lcb, args=as.list(rlang::call_match())[-1])
  o
}


#' Get last insider activity for a given stock ticker. [Source: Finviz]
#'
#' @description Wrapper for Python function stocks.ins.lins from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Stock ticker symbol
#' @examples
#' stocks.ins.lins(symbol='AMZN')
#' @export
#* @get /stocks.ins.lins
stocks.ins.lins <- function(symbol) {
  o <- do.call(what=py$openbb$stocks$ins$lins, args=as.list(rlang::call_match())[-1])
  o
}


#' Display insider activity for a given stock ticker. [Source: Finviz]
#'
#' @description Wrapper for Python function stocks.ins.lins_chart from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Stock ticker symbol
#' @param limit (integer length 1) Number of latest insider activity to display
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' stocks.ins.lins_chart(symbol='AMZN', limit=10)
#' @export
#* @get /stocks.ins.lins_chart
stocks.ins.lins_chart <- function(symbol, limit = 10, export = "", sheet_name) {
  o <- do.call(what=py$openbb$stocks$ins$lins_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get latest insider purchases
#'
#' @description Wrapper for Python function stocks.ins.lip from OpenBB Terminal SDK
#'
#' @export
#* @get /stocks.ins.lip
stocks.ins.lip <- function() {
  o <- do.call(what=py$openbb$stocks$ins$lip, args=as.list(rlang::call_match())[-1])
  o
}


#' Get latest insider sales
#'
#' @description Wrapper for Python function stocks.ins.lis from OpenBB Terminal SDK
#'
#' @export
#* @get /stocks.ins.lis
stocks.ins.lis <- function() {
  o <- do.call(what=py$openbb$stocks$ins$lis, args=as.list(rlang::call_match())[-1])
  o
}


#' Get latest insider trades
#'
#' @description Wrapper for Python function stocks.ins.lit from OpenBB Terminal SDK
#'
#' @export
#* @get /stocks.ins.lit
stocks.ins.lit <- function() {
  o <- do.call(what=py$openbb$stocks$ins$lit, args=as.list(rlang::call_match())[-1])
  o
}


#' Get latest penny stock buys
#'
#' @description Wrapper for Python function stocks.ins.lpsb from OpenBB Terminal SDK
#'
#' @export
#* @get /stocks.ins.lpsb
stocks.ins.lpsb <- function() {
  o <- do.call(what=py$openbb$stocks$ins$lpsb, args=as.list(rlang::call_match())[-1])
  o
}


#' Print insider data
#'
#' @description Wrapper for Python function stocks.ins.print_insider_data from OpenBB Terminal SDK
#'
#' @param type_insider (character length 1) Insider type of data. Available types can be accessed through get_insider_types().
#' @examples
#' stocks.ins.print_insider_data(type_insider='lcb', limit=10)
#' @export
#* @get /stocks.ins.print_insider_data
stocks.ins.print_insider_data <- function(type_insider = "lcb") {
  o <- do.call(what=py$openbb$stocks$ins$print_insider_data, args=as.list(rlang::call_match())[-1])
  o
}


#' Print insider data
#'
#' @description Wrapper for Python function stocks.ins.print_insider_data_chart from OpenBB Terminal SDK
#'
#' @param type_insider (character length 1) Insider type of data. Available types can be accessed through get_insider_types().
#' @param limit (integer length 1) Limit of data rows to display
#' @param export (character length 1) Export data format
#' @examples
#' stocks.ins.print_insider_data_chart(type_insider='lcb', limit=10)
#' @export
#* @get /stocks.ins.print_insider_data_chart
stocks.ins.print_insider_data_chart <- function(type_insider = "lcb", limit = 10, export = "", sheet_name) {
  o <- do.call(what=py$openbb$stocks$ins$print_insider_data_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get OpenInsider stats for ticker
#'
#' @description Wrapper for Python function stocks.ins.stats from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Ticker to get insider stats for
#' @export
#* @get /stocks.ins.stats
stocks.ins.stats <- function(symbol) {
  o <- do.call(what=py$openbb$stocks$ins$stats, args=as.list(rlang::call_match())[-1])
  o
}


#'
#' @description Wrapper for Python function stocks.options.about from OpenBB Terminal SDK
#'
#' @export
#* @get /stocks.options.about
stocks.options.about <- function() {
  o <- do.call(what=py$openbb$stocks$options$about, args=as.list(rlang::call_match())[-1])
  o
}


#' Get Option Chain For A Stock.  No greek data is returned
#'
#' @description Wrapper for Python function stocks.options.chains from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Symbol to get chain for
#' @param source (character length 1) Source to get data from, by default "Nasdaq".  Can be YahooFinance, Tradier, Nasdaq, or Intrinio
#' @examples
#' stocks.options.chains(symbol='AMZN', source='Nasdaq')
#' @export
#* @get /stocks.options.chains
stocks.options.chains <- function(symbol, source = "Nasdaq", expiration) {
  o <- do.call(what=py$openbb$stocks$options$chains, args=as.list(rlang::call_match())[-1])
  o
}


#' Gets days to expiration from yfinance option date
#'
#' @description Wrapper for Python function stocks.options.dte from OpenBB Terminal SDK
#'
#' @export
#* @get /stocks.options.dte
stocks.options.dte <- function(date_value) {
  o <- do.call(what=py$openbb$stocks$options$dte, args=as.list(rlang::call_match())[-1])
  o
}


#' Get full EOD option date across all expirations
#'
#' @description Wrapper for Python function stocks.options.eodchain from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Symbol to get option chain for
#' @param date (character length 1) Date to get EOD chain for
#' @param quiet (logical length 1) Flag to suppress progress bar
#' @export
#* @get /stocks.options.eodchain
stocks.options.eodchain <- function(symbol, date, quiet = FALSE) {
  o <- do.call(what=py$openbb$stocks$options$eodchain, args=as.list(rlang::call_match())[-1])
  o
}


#' Get Option Chain Expirations
#'
#' @description Wrapper for Python function stocks.options.expirations from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Symbol to get chain for
#' @param source (character length 1) Source to get data from, by default "Nasdaq"
#' @examples
#' stocks.options.expirations(symbol='AMZN', source='Nasdaq')
#' @export
#* @get /stocks.options.expirations
stocks.options.expirations <- function(symbol, source = "Nasdaq") {
  o <- do.call(what=py$openbb$stocks$options$expirations, args=as.list(rlang::call_match())[-1])
  o
}


#' Gets x values, and y values before and after premiums
#'
#' @description Wrapper for Python function stocks.options.generate_data from OpenBB Terminal SDK
#'
#' @export
#* @get /stocks.options.generate_data
stocks.options.generate_data <- function(current_price, options, underlying) {
  o <- do.call(what=py$openbb$stocks$options$generate_data, args=as.list(rlang::call_match())[-1])
  o
}


#' Gets the greeks for a given option
#'
#' @description Wrapper for Python function stocks.options.greeks from OpenBB Terminal SDK
#'
#' @param current_price (numeric length 1) The current price of the underlying
#' @param chain (data.frame) The dataframe with option chains
#' @param expire (character length 1) The date of expiration
#' @param div_cont (numeric length 1) The dividend continuous rate
#' @export
#* @get /stocks.options.greeks
stocks.options.greeks <- function(current_price, chain, expire, div_cont = 0, rf) {
  o <- do.call(what=py$openbb$stocks$options$greeks, args=as.list(rlang::call_match())[-1])
  o
}


#' Get histoical option greeks
#'
#' @description Wrapper for Python function stocks.options.grhist from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Stock ticker symbol
#' @param expiry (character length 1) Option expiration date
#' @param strike (numeric length 1) Strike price to look for
#' @param chain_id (character length 1) OCC option symbol.  Overwrites other inputs
#' @param put (logical length 1) Is this a put option?
#' @examples
#' stocks.options.grhist(symbol='AMZN', put=FALSE)
#' @export
#* @get /stocks.options.grhist
stocks.options.grhist <- function(symbol, expiry, strike, chain_id = "", put = FALSE) {
  o <- do.call(what=py$openbb$stocks$options$grhist, args=as.list(rlang::call_match())[-1])
  o
}


#' Plots historical greeks for a given option. [Source: Syncretism]
#'
#' @description Wrapper for Python function stocks.options.grhist_chart from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Stock ticker
#' @param expiry (character length 1) Expiration date
#' @param greek (character length 1) Greek variable to plot
#' @param chain_id (character length 1) OCC option chain.  Overwrites other variables
#' @param put (logical length 1) Is this a put option?
#' @param raw (logical length 1) Print to console
#' @param export (character length 1) Format to export data
#' @examples
#' stocks.options.grhist_chart(symbol='AMZN', greek='Delta', put=FALSE, raw=FALSE, limit=20)
#' @export
#* @get /stocks.options.grhist_chart
stocks.options.grhist_chart <- function(symbol, expiry, strike, greek = "Delta", chain_id = "", put = FALSE, raw = FALSE, limit, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$stocks$options$grhist_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get historical option pricing.
#'
#' @description Wrapper for Python function stocks.options.hist from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Symbol to get data for
#' @param exp (character length 1) Expiration date
#' @param call (logical length 1) Flag to indicate a call, by default True
#' @param source (Python type: inspect._empty) Source to get data from.  Can be ChartExchange or Tradier, by default "ChartExchange"
#' @examples
#' stocks.options.hist(symbol='AMZN', call=TRUE, source='ChartExchange')
#' @export
#* @get /stocks.options.hist
stocks.options.hist <- function(symbol, exp, strike, call = TRUE, source) {
  o <- do.call(what=py$openbb$stocks$options$hist, args=as.list(rlang::call_match())[-1])
  o
}


#' Scrape barchart for options info
#'
#' @description Wrapper for Python function stocks.options.info from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Stock ticker symbol
#' @examples
#' stocks.options.info(symbol='AMZN')
#' @export
#* @get /stocks.options.info
stocks.options.info <- function(symbol) {
  o <- do.call(what=py$openbb$stocks$options$info, args=as.list(rlang::call_match())[-1])
  o
}


#' Scrapes Barchart.com for the options information
#'
#' @description Wrapper for Python function stocks.options.info_chart from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Ticker symbol to get options info for
#' @param export (character length 1) Format of export file
#' @examples
#' stocks.options.info_chart(symbol='AMZN')
#' @export
#* @get /stocks.options.info_chart
stocks.options.info_chart <- function(symbol, export = "", sheet_name) {
  o <- do.call(what=py$openbb$stocks$options$info_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Makes api request for last price
#'
#' @description Wrapper for Python function stocks.options.last_price from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Ticker symbol
#' @examples
#' stocks.options.last_price(symbol='AMZN')
#' @export
#* @get /stocks.options.last_price
stocks.options.last_price <- function(symbol) {
  o <- do.call(what=py$openbb$stocks$options$last_price, args=as.list(rlang::call_match())[-1])
  o
}


#' Plot open interest
#'
#' @description Wrapper for Python function stocks.options.oi from OpenBB Terminal SDK
#'
#' @param chain (data.frame) Dataframe with options chain
#' @param current_price (numeric length 1) Current price of selected symbol
#' @param symbol (character length 1) Ticker symbol
#' @param expiry (character length 1) expiration date for options
#' @param min_sp (numeric length 1) Min strike to consider
#' @param max_sp (numeric length 1) Max strike to consider
#' @param calls_only (logical length 1) Show calls only
#' @param puts_only (logical length 1) Show puts only
#' @param export (character length 1) Format to export file
#' @export
#* @get /stocks.options.oi
stocks.options.oi <- function(chain, current_price, symbol, expiry, min_sp = -1, max_sp = -1, calls_only = FALSE, puts_only = FALSE, raw = FALSE, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$stocks$options$oi, args=as.list(rlang::call_match())[-1])
  o
}


#' Gets put call ratio over last time window [Source: AlphaQuery.com]
#'
#' @description Wrapper for Python function stocks.options.pcr from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Ticker symbol to look for
#' @param window (integer length 1) Window to consider, by default 30
#' @examples
#' stocks.options.pcr(symbol='AMZN', window=30)
#' @export
#* @get /stocks.options.pcr
stocks.options.pcr <- function(symbol, window = 30, start_date) {
  o <- do.call(what=py$openbb$stocks$options$pcr, args=as.list(rlang::call_match())[-1])
  o
}


#' Display put call ratio [Source: AlphaQuery.com]
#'
#' @description Wrapper for Python function stocks.options.pcr_chart from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Stock ticker symbol
#' @param window (integer length 1) Window length to look at, by default 30
#' @param start_date (character length 1) Starting date for data, by default (datetime.now() - timedelta(days=366)).strftime("%Y-%m-%d")
#' @param export (character length 1) Format to export data, by default ""
#' @examples
#' stocks.options.pcr_chart(symbol='AMZN', window=30, start_date='2021-11-24')
#' @export
#* @get /stocks.options.pcr_chart
stocks.options.pcr_chart <- function(symbol, window = 30, start_date = "2022-04-03", export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$stocks$options$pcr_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get Option current price for a stock.
#'
#' @description Wrapper for Python function stocks.options.price from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Symbol to get chain for
#' @param source (character length 1) Source to get data from, by default "Nasdaq"
#' @export
#* @get /stocks.options.price
stocks.options.price <- function(symbol, source = "Nasdaq") {
  o <- do.call(what=py$openbb$stocks$options$price, args=as.list(rlang::call_match())[-1])
  o
}


#' Get unusual option activity from fdscanner.com
#'
#' @description Wrapper for Python function stocks.options.unu from OpenBB Terminal SDK
#'
#' @param limit (integer length 1) Number to show
#' @examples
#' stocks.options.unu(limit=100)
#' @export
#* @get /stocks.options.unu
stocks.options.unu <- function(limit = 100) {
  o <- do.call(what=py$openbb$stocks$options$unu, args=as.list(rlang::call_match())[-1])
  o
}


#' Displays the unusual options table
#'
#' @description Wrapper for Python function stocks.options.unu_chart from OpenBB Terminal SDK
#'
#' @param limit (integer length 1) Number of rows to show
#' @param sortby (character length 1) Data column to sort on
#' @param ascend (logical length 1) Whether to sort in ascend order
#' @param calls_only (logical length 1) Flag to only show calls
#' @param puts_only (logical length 1) Flag to show puts only
#' @param export (character length 1) File type to export
#' @examples
#' stocks.options.unu_chart(limit=20, sortby='Vol/OI', ascend=FALSE, calls_only=FALSE, puts_only=FALSE)
#' @export
#* @get /stocks.options.unu_chart
stocks.options.unu_chart <- function(limit = 20, sortby = "Vol/OI", ascend = FALSE, calls_only = FALSE, puts_only = FALSE, export = "", sheet_name) {
  o <- do.call(what=py$openbb$stocks$options$unu_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Plot volume and open interest
#'
#' @description Wrapper for Python function stocks.options.voi from OpenBB Terminal SDK
#'
#' @param chain (data.frame) Dataframe with options chain
#' @param current_price (numeric length 1) Current price of selected symbol
#' @param symbol (character length 1) Stock ticker symbol
#' @param expiry (character length 1) Option expiration
#' @param min_sp (numeric length 1) Min strike price
#' @param max_sp (numeric length 1) Max strike price
#' @param export (character length 1) Format for exporting data
#' @export
#* @get /stocks.options.voi
stocks.options.voi <- function(chain, current_price, symbol, expiry, min_sp = -1, max_sp = -1, raw = FALSE, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$stocks$options$voi, args=as.list(rlang::call_match())[-1])
  o
}


#' Plot volume
#'
#' @description Wrapper for Python function stocks.options.vol from OpenBB Terminal SDK
#'
#' @param chain (data.frame) Dataframe with options chain
#' @param current_price (numeric length 1) Current price of selected symbol
#' @param symbol (character length 1) Ticker symbol
#' @param expiry (character length 1) expiration date for options
#' @param min_sp (numeric length 1) Min strike to consider
#' @param max_sp (numeric length 1) Max strike to consider
#' @param calls_only (logical length 1) Show calls only
#' @param puts_only (logical length 1) Show puts only
#' @param export (character length 1) Format to export file
#' @export
#* @get /stocks.options.vol
stocks.options.vol <- function(chain, current_price, symbol, expiry, min_sp = -1, max_sp = -1, calls_only = FALSE, puts_only = FALSE, raw = FALSE, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$stocks$options$vol, args=as.list(rlang::call_match())[-1])
  o
}


#' Gets IV surface for calls and puts for ticker
#'
#' @description Wrapper for Python function stocks.options.vsurf from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Stock ticker symbol to get
#' @examples
#' stocks.options.vsurf(symbol='AMZN')
#' @export
#* @get /stocks.options.vsurf
stocks.options.vsurf <- function(symbol) {
  o <- do.call(what=py$openbb$stocks$options$vsurf, args=as.list(rlang::call_match())[-1])
  o
}


#' Display vol surface
#'
#' @description Wrapper for Python function stocks.options.vsurf_chart from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Ticker symbol to get surface for
#' @param export (character length 1) Format to export data
#' @param z (character length 1) The variable for the Z axis
#' @examples
#' stocks.options.vsurf_chart(symbol='AMZN', z='IV')
#' @export
#* @get /stocks.options.vsurf_chart
stocks.options.vsurf_chart <- function(symbol, export = "", sheet_name, z = "IV", external_axes) {
  o <- do.call(what=py$openbb$stocks$options$vsurf_chart, args=as.list(rlang::call_match())[-1])
  o
}


#'
#' @description Wrapper for Python function stocks.qa.about from OpenBB Terminal SDK
#'
#' @export
#* @get /stocks.qa.about
stocks.qa.about <- function() {
  o <- do.call(what=py$openbb$stocks$qa$about, args=as.list(rlang::call_match())[-1])
  o
}


#' Calculate beta for a ticker and a reference ticker.
#'
#' @description Wrapper for Python function stocks.qa.beta from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) A ticker to calculate beta for
#' @param ref_symbol (character length 1) A reference ticker symbol for the beta calculation (default in terminal is SPY)
#' @param interval (integer length 1) The interval of the ref_data. This will ONLY be used if ref_data is None
#' @examples
#' stocks.qa.beta(symbol='AMZN', interval=1440)
#' @export
#* @get /stocks.qa.beta
stocks.qa.beta <- function(symbol, ref_symbol, data, ref_data, interval = 1440) {
  o <- do.call(what=py$openbb$stocks$qa$beta, args=as.list(rlang::call_match())[-1])
  o
}


#' Display the beta scatterplot + linear regression.
#'
#' @description Wrapper for Python function stocks.qa.beta_chart from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) A ticker to calculate beta for
#' @param ref_symbol (character length 1) A reference ticker symbol for the beta calculation (default in terminal is SPY)
#' @param interval (integer length 1) The interval of the ref_data. This will ONLY be used if ref_data is None
#' @examples
#' stocks.qa.beta_chart(symbol='AMZN', interval=1440)
#' @export
#* @get /stocks.qa.beta_chart
stocks.qa.beta_chart <- function(symbol, ref_symbol, data, ref_data, interval = 1440, export = "", sheet_name) {
  o <- do.call(what=py$openbb$stocks$qa$beta_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Provides information that relates to the CAPM model
#'
#' @description Wrapper for Python function stocks.qa.capm from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) A ticker symbol in string form
#' @examples
#' stocks.qa.capm(symbol='AMZN')
#' @export
#* @get /stocks.qa.capm
stocks.qa.capm <- function(symbol) {
  o <- do.call(what=py$openbb$stocks$qa$capm, args=as.list(rlang::call_match())[-1])
  o
}


#' Gets base Fama French data to calculate risk
#'
#' @description Wrapper for Python function stocks.qa.fama_raw from OpenBB Terminal SDK
#'
#' @export
#* @get /stocks.qa.fama_raw
stocks.qa.fama_raw <- function() {
  o <- do.call(what=py$openbb$stocks$qa$fama_raw, args=as.list(rlang::call_match())[-1])
  o
}


#' Get 5 year monthly historical performance for a ticker with dividends filtered
#'
#' @description Wrapper for Python function stocks.qa.historical_5 from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) A ticker symbol in string form
#' @examples
#' stocks.qa.historical_5(symbol='AMZN')
#' @export
#* @get /stocks.qa.historical_5
stocks.qa.historical_5 <- function(symbol) {
  o <- do.call(what=py$openbb$stocks$qa$historical_5, args=as.list(rlang::call_match())[-1])
  o
}


#'
#' @description Wrapper for Python function stocks.screener.about from OpenBB Terminal SDK
#'
#' @export
#* @get /stocks.screener.about
stocks.screener.about <- function() {
  o <- do.call(what=py$openbb$stocks$screener$about, args=as.list(rlang::call_match())[-1])
  o
}


#' Gets a dataframe of ARK trades for ticker
#'
#' @description Wrapper for Python function stocks.screener.arktrades from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Ticker to get trades for
#' @export
#* @get /stocks.screener.arktrades
stocks.screener.arktrades <- function(symbol) {
  o <- do.call(what=py$openbb$stocks$screener$arktrades, args=as.list(rlang::call_match())[-1])
  o
}


#' View historical price of stocks that meet preset
#'
#' @description Wrapper for Python function stocks.screener.historical from OpenBB Terminal SDK
#'
#' @param preset_loaded (character length 1) Preset loaded to filter for tickers
#' @param limit (integer length 1) Number of stocks to display
#' @param start_date (character length 1) Start date to display historical data, in YYYY-MM-DD format
#' @param type_candle (character length 1) Type of candle to display
#' @param normalize (logical length 1) Boolean to normalize all stock prices using MinMax
#' @examples
#' stocks.screener.historical(preset_loaded='top_gainers', limit=10, start_date='2022-05-29', type_candle='a', normalize=TRUE)
#' @export
#* @get /stocks.screener.historical
stocks.screener.historical <- function(preset_loaded = "top_gainers", limit = 10, start_date = "2022-10-06", type_candle = "a", normalize = TRUE) {
  o <- do.call(what=py$openbb$stocks$screener$historical, args=as.list(rlang::call_match())[-1])
  o
}


#' View historical price of stocks that meet preset
#'
#' @description Wrapper for Python function stocks.screener.historical_chart from OpenBB Terminal SDK
#'
#' @param preset_loaded (character length 1) Preset loaded to filter for tickers
#' @param limit (integer length 1) Number of stocks to display
#' @param start_date (character length 1) Start date to display historical data, in YYYY-MM-DD format
#' @param type_candle (character length 1) Type of candle to display
#' @param normalize (logical length 1) Boolean to normalize all stock prices using MinMax
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' stocks.screener.historical_chart(preset_loaded='top_gainers', limit=10, start_date='2022-05-29', type_candle='a', normalize=TRUE)
#' @export
#* @get /stocks.screener.historical_chart
stocks.screener.historical_chart <- function(preset_loaded = "top_gainers", limit = 10, start_date = "2022-10-06", type_candle = "a", normalize = TRUE, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$stocks$screener$historical_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Screener Overview
#'
#' @description Wrapper for Python function stocks.screener.screener_data from OpenBB Terminal SDK
#'
#' @param preset_loaded (character length 1) Loaded preset filter
#' @param data_type (character length 1) Data type between: overview, valuation, financial, ownership, performance, technical
#' @param limit (integer length 1) Limit of stocks filtered with presets to print
#' @param ascend (logical length 1) Ascended order of stocks filtered to print
#' @examples
#' stocks.screener.screener_data(preset_loaded='top_gainers', data_type='overview', limit=10, ascend=FALSE)
#' @export
#* @get /stocks.screener.screener_data
stocks.screener.screener_data <- function(preset_loaded = "top_gainers", data_type = "overview", limit = 10, ascend = FALSE) {
  o <- do.call(what=py$openbb$stocks$screener$screener_data, args=as.list(rlang::call_match())[-1])
  o
}


#' Screener one of the following: overview, valuation, financial, ownership, performance, technical.
#'
#' @description Wrapper for Python function stocks.screener.screener_data_chart from OpenBB Terminal SDK
#'
#' @param loaded_preset (character length 1) Preset loaded to filter for tickers
#' @param data_type (character length 1) Data type string between: overview, valuation, financial, ownership, performance, technical
#' @param limit (integer length 1) Limit of stocks to display
#' @param ascend (logical length 1) Order of table to ascend or descend
#' @param sortby (character length 1) Column to sort table by
#' @param export (character length 1) Export dataframe data to csv,json,xlsx file
#' @examples
#' stocks.screener.screener_data_chart(loaded_preset='top_gainers', data_type='overview', limit=10, ascend=FALSE)
#' @export
#* @get /stocks.screener.screener_data_chart
stocks.screener.screener_data_chart <- function(loaded_preset = "top_gainers", data_type = "overview", limit = 10, ascend = FALSE, sortby = "", export = "", sheet_name) {
  o <- do.call(what=py$openbb$stocks$screener$screener_data_chart, args=as.list(rlang::call_match())[-1])
  o
}


#'
#' @description Wrapper for Python function stocks.ta.about from OpenBB Terminal SDK
#'
#' @export
#* @get /stocks.ta.about
stocks.ta.about <- function() {
  o <- do.call(what=py$openbb$stocks$ta$about, args=as.list(rlang::call_match())[-1])
  o
}


#' Get tradingview recommendation based on technical indicators
#'
#' @description Wrapper for Python function stocks.ta.recom from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Ticker symbol to get the recommendation from tradingview based on technical indicators
#' @param screener (character length 1) Screener based on tradingview docs https://python-tradingview-ta.readthedocs.io/en/latest/usage.html
#' @param exchange (character length 1) Exchange based on tradingview docs https://python-tradingview-ta.readthedocs.io/en/latest/usage.html
#' @param interval (character length 1) Interval time to check technical indicators and correspondent recommendation
#' @examples
#' stocks.ta.recom(symbol='AMZN', screener='america')
#' @export
#* @get /stocks.ta.recom
stocks.ta.recom <- function(symbol, screener = "america", exchange = "", interval = "") {
  o <- do.call(what=py$openbb$stocks$ta$recom, args=as.list(rlang::call_match())[-1])
  o
}


#' Print tradingview recommendation based on technical indicators
#'
#' @description Wrapper for Python function stocks.ta.recom_chart from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Ticker symbol to get tradingview recommendation based on technical indicators
#' @param screener (character length 1) Screener based on tradingview docs https://python-tradingview-ta.readthedocs.io/en/latest/usage.html
#' @param exchange (character length 1) Exchange based on tradingview docs https://python-tradingview-ta.readthedocs.io/en/latest/usage.html
#' @param interval (character length 1) Interval time to check technical indicators and correspondent recommendation
#' @param export (character length 1) Format of export file
#' @examples
#' stocks.ta.recom_chart(symbol='AMZN', screener='america')
#' @export
#* @get /stocks.ta.recom_chart
stocks.ta.recom_chart <- function(symbol, screener = "america", exchange = "", interval = "", export = "", sheet_name) {
  o <- do.call(what=py$openbb$stocks$ta$recom_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Relative strength percentile [Source: https://github.com/skyte/relative-strength]
#'
#' @description Wrapper for Python function stocks.ta.rsp from OpenBB Terminal SDK
#'
#' @param s_ticker (character length 1) Stock Ticker
#' @export
#* @get /stocks.ta.rsp
stocks.ta.rsp <- function(s_ticker = "") {
  o <- do.call(what=py$openbb$stocks$ta$rsp, args=as.list(rlang::call_match())[-1])
  o
}


#' Display Relative Strength Percentile [Source: https://github.com/skyte/relative-strength]
#'
#' @description Wrapper for Python function stocks.ta.rsp_chart from OpenBB Terminal SDK
#'
#' @param s_ticker (character length 1) Stock ticker
#' @param export (character length 1) Format of export file
#' @param tickers_show (logical length 1) Boolean to check if tickers in the same industry as the stock should be shown
#' @examples
#' stocks.ta.rsp_chart(tickers_show=FALSE)
#' @export
#* @get /stocks.ta.rsp_chart
stocks.ta.rsp_chart <- function(s_ticker = "", export = "", sheet_name, tickers_show = FALSE) {
  o <- do.call(what=py$openbb$stocks$ta$rsp_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get technical summary report provided by FinBrain's API
#'
#' @description Wrapper for Python function stocks.ta.summary from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Ticker symbol to get the technical summary
#' @examples
#' stocks.ta.summary(symbol='AMZN')
#' @export
#* @get /stocks.ta.summary
stocks.ta.summary <- function(symbol) {
  o <- do.call(what=py$openbb$stocks$ta$summary, args=as.list(rlang::call_match())[-1])
  o
}


#' Print technical summary report provided by FinBrain's API
#'
#' @description Wrapper for Python function stocks.ta.summary_chart from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Ticker symbol to get the technical summary
#' @examples
#' stocks.ta.summary_chart(symbol='AMZN')
#' @export
#* @get /stocks.ta.summary_chart
stocks.ta.summary_chart <- function(symbol) {
  o <- do.call(what=py$openbb$stocks$ta$summary_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get finviz image for given ticker
#'
#' @description Wrapper for Python function stocks.ta.view from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Ticker symbol
#' @examples
#' stocks.ta.view(symbol='AMZN')
#' @export
#* @get /stocks.ta.view
stocks.ta.view <- function(symbol) {
  o <- do.call(what=py$openbb$stocks$ta$view, args=as.list(rlang::call_match())[-1])
  o
}


#' View finviz image for ticker
#'
#' @description Wrapper for Python function stocks.ta.view_chart from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Stock ticker symbol
#' @examples
#' stocks.ta.view_chart(symbol='AMZN')
#' @export
#* @get /stocks.ta.view_chart
stocks.ta.view_chart <- function(symbol, external_axes) {
  o <- do.call(what=py$openbb$stocks$ta$view_chart, args=as.list(rlang::call_match())[-1])
  o
}


#'
#' @description Wrapper for Python function stocks.th.about from OpenBB Terminal SDK
#'
#' @export
#* @get /stocks.th.about
stocks.th.about <- function() {
  o <- do.call(what=py$openbb$stocks$th$about, args=as.list(rlang::call_match())[-1])
  o
}


#' Get all exchanges.
#'
#' @description Wrapper for Python function stocks.th.all from OpenBB Terminal SDK
#'
#' @export
#* @get /stocks.th.all
stocks.th.all <- function() {
  o <- do.call(what=py$openbb$stocks$th$all, args=as.list(rlang::call_match())[-1])
  o
}


#' Display all exchanges.
#'
#' @description Wrapper for Python function stocks.th.all_chart from OpenBB Terminal SDK
#'
#' @export
#* @get /stocks.th.all_chart
stocks.th.all_chart <- function() {
  o <- do.call(what=py$openbb$stocks$th$all_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Check if market open helper function
#'
#' @description Wrapper for Python function stocks.th.check_if_open from OpenBB Terminal SDK
#'
#' @export
#* @get /stocks.th.check_if_open
stocks.th.check_if_open <- function(bursa, exchange) {
  o <- do.call(what=py$openbb$stocks$th$check_if_open, args=as.list(rlang::call_match())[-1])
  o
}


#' Get closed exchanges.
#'
#' @description Wrapper for Python function stocks.th.closed from OpenBB Terminal SDK
#'
#' @export
#* @get /stocks.th.closed
stocks.th.closed <- function() {
  o <- do.call(what=py$openbb$stocks$th$closed, args=as.list(rlang::call_match())[-1])
  o
}


#' Display closed exchanges.
#'
#' @description Wrapper for Python function stocks.th.closed_chart from OpenBB Terminal SDK
#'
#' @export
#* @get /stocks.th.closed_chart
stocks.th.closed_chart <- function() {
  o <- do.call(what=py$openbb$stocks$th$closed_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get current exchange open hours.
#'
#' @description Wrapper for Python function stocks.th.exchange from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Exchange symbol
#' @examples
#' stocks.th.exchange(symbol='AMZN')
#' @export
#* @get /stocks.th.exchange
stocks.th.exchange <- function(symbol) {
  o <- do.call(what=py$openbb$stocks$th$exchange, args=as.list(rlang::call_match())[-1])
  o
}


#' Display current exchange trading hours.
#'
#' @description Wrapper for Python function stocks.th.exchange_chart from OpenBB Terminal SDK
#'
#' @param symbol (character length 1) Exchange symbol
#' @examples
#' stocks.th.exchange_chart(symbol='AMZN')
#' @export
#* @get /stocks.th.exchange_chart
stocks.th.exchange_chart <- function(symbol) {
  o <- do.call(what=py$openbb$stocks$th$exchange_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get open exchanges.
#'
#' @description Wrapper for Python function stocks.th.open from OpenBB Terminal SDK
#'
#' @export
#* @get /stocks.th.open
stocks.th.open <- function() {
  o <- do.call(what=py$openbb$stocks$th$open, args=as.list(rlang::call_match())[-1])
  o
}


#' Display open exchanges.
#'
#' @description Wrapper for Python function stocks.th.open_chart from OpenBB Terminal SDK
#'
#' @export
#* @get /stocks.th.open_chart
stocks.th.open_chart <- function() {
  o <- do.call(what=py$openbb$stocks$th$open_chart, args=as.list(rlang::call_match())[-1])
  o
}


#'
#' @description Wrapper for Python function ta.about from OpenBB Terminal SDK
#'
#' @export
#* @get /ta.about
ta.about <- function() {
  o <- do.call(what=py$openbb$ta$about, args=as.list(rlang::call_match())[-1])
  o
}


#' Calculate AD technical indicator
#'
#' @description Wrapper for Python function ta.ad from OpenBB Terminal SDK
#'
#' @param data (data.frame) Dataframe of prices with OHLC and Volume
#' @param use_open (logical length 1) Whether to use open prices
#' @examples
#' ta.ad(use_open=FALSE)
#' @export
#* @get /ta.ad
ta.ad <- function(data, use_open = FALSE) {
  o <- do.call(what=py$openbb$ta$ad, args=as.list(rlang::call_match())[-1])
  o
}


#' Plots AD technical indicator
#'
#' @description Wrapper for Python function ta.ad_chart from OpenBB Terminal SDK
#'
#' @param data (data.frame) Dataframe of ohlc prices
#' @param use_open (logical length 1) Whether to use open prices in calculation
#' @param symbol (character length 1) Ticker symbol
#' @param export (character length 1) Format to export data as
#' @examples
#' ta.ad_chart(use_open=FALSE)
#' @export
#* @get /ta.ad_chart
ta.ad_chart <- function(data, use_open = FALSE, symbol = "", export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$ta$ad_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Calculate AD oscillator technical indicator
#'
#' @description Wrapper for Python function ta.adosc from OpenBB Terminal SDK
#'
#' @param data (data.frame) Dataframe of OHLC prices
#' @param use_open (logical length 1) Whether to use open prices
#' @param fast (integer length 1) Fast value
#' @param slow (integer length 1) Slow value
#' @examples
#' ta.adosc(use_open=FALSE, fast=3, slow=10)
#' @export
#* @get /ta.adosc
ta.adosc <- function(data, use_open = FALSE, fast = 3, slow = 10) {
  o <- do.call(what=py$openbb$ta$adosc, args=as.list(rlang::call_match())[-1])
  o
}


#' Plots AD Osc Indicator
#'
#' @description Wrapper for Python function ta.adosc_chart from OpenBB Terminal SDK
#'
#' @param data (data.frame) Dataframe of ohlc prices
#' @param fast (integer length 1) Length of fast window
#' @param slow (integer length 1) Length of slow window
#' @param use_open (logical length 1) Whether to use open prices in calculation
#' @param symbol (character length 1) Stock ticker
#' @param export (character length 1) Format to export data
#' @examples
#' ta.adosc_chart(use_open=FALSE, fast=3, slow=10)
#' @export
#* @get /ta.adosc_chart
ta.adosc_chart <- function(data, fast = 3, slow = 10, use_open = FALSE, symbol = "", export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$ta$adosc_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' ADX technical indicator
#'
#' @description Wrapper for Python function ta.adx from OpenBB Terminal SDK
#'
#' @param data (data.frame) Dataframe with OHLC price data
#' @param window (integer length 1) Length of window
#' @param scalar (integer length 1) Scalar variable
#' @param drift (integer length 1) Drift variable
#' @examples
#' ta.adx(window=14, scalar=100, drift=1)
#' @export
#* @get /ta.adx
ta.adx <- function(data, window = 14, scalar = 100, drift = 1) {
  o <- do.call(what=py$openbb$ta$adx, args=as.list(rlang::call_match())[-1])
  o
}


#' Plots ADX indicator
#'
#' @description Wrapper for Python function ta.adx_chart from OpenBB Terminal SDK
#'
#' @param data (data.frame) Dataframe with OHLC price data
#' @param window (integer length 1) Length of window
#' @param scalar (integer length 1) Scalar variable
#' @param drift (integer length 1) Drift variable
#' @param symbol (character length 1) Ticker
#' @param export (character length 1) Format to export data
#' @examples
#' ta.adx_chart(window=14, scalar=100, drift=1)
#' @export
#* @get /ta.adx_chart
ta.adx_chart <- function(data, window = 14, scalar = 100, drift = 1, symbol = "", export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$ta$adx_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Aroon technical indicator
#'
#' @description Wrapper for Python function ta.aroon from OpenBB Terminal SDK
#'
#' @param data (data.frame) Dataframe with OHLC price data
#' @param window (integer length 1) Length of window
#' @param scalar (integer length 1) Scalar variable
#' @examples
#' ta.aroon(window=25, scalar=100)
#' @export
#* @get /ta.aroon
ta.aroon <- function(data, window = 25, scalar = 100) {
  o <- do.call(what=py$openbb$ta$aroon, args=as.list(rlang::call_match())[-1])
  o
}


#' Plots Aroon indicator
#'
#' @description Wrapper for Python function ta.aroon_chart from OpenBB Terminal SDK
#'
#' @param data (data.frame) Dataframe with OHLC price data
#' @param window (integer length 1) Length of window
#' @param scalar (integer length 1) Scalar variable
#' @param symbol (character length 1) Ticker
#' @param export (character length 1) Format to export data
#' @examples
#' ta.aroon_chart(window=25, scalar=100)
#' @export
#* @get /ta.aroon_chart
ta.aroon_chart <- function(data, window = 25, scalar = 100, symbol = "", export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$ta$aroon_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Average True Range
#'
#' @description Wrapper for Python function ta.atr from OpenBB Terminal SDK
#'
#' @param data (data.frame) Dataframe of ohlc prices
#' @param window (integer length 1) Length of window
#' @param mamode (character length 1) Type of filter
#' @param offset (integer length 1) Offset value
#' @examples
#' ta.atr(window=14, mamode='ema', offset=0)
#' @export
#* @get /ta.atr
ta.atr <- function(data, window = 14, mamode = "ema", offset = 0) {
  o <- do.call(what=py$openbb$ta$atr, args=as.list(rlang::call_match())[-1])
  o
}


#' Plots ATR
#'
#' @description Wrapper for Python function ta.atr_chart from OpenBB Terminal SDK
#'
#' @param data (data.frame) Dataframe of ohlc prices
#' @param symbol (character length 1) Ticker symbol
#' @param window (integer length 1) Length of window to calculate upper channel
#' @param export (character length 1) Format of export file
#' @examples
#' ta.atr_chart(window=14)
#' @export
#* @get /ta.atr_chart
ta.atr_chart <- function(data, symbol = "", window = 14, mamode = "sma", offset = 0, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$ta$atr_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Calculate Bollinger Bands
#'
#' @description Wrapper for Python function ta.bbands from OpenBB Terminal SDK
#'
#' @param data (data.frame) Dataframe of ohlc prices
#' @param window (integer length 1) Length of window to calculate BB
#' @param n_std (numeric length 1) Number of standard deviations to show
#' @param mamode (character length 1) Method of calculating average
#' @examples
#' ta.bbands(window=15, n_std=2, mamode='ema')
#' @export
#* @get /ta.bbands
ta.bbands <- function(data, window = 15, n_std = 2, mamode = "ema") {
  o <- do.call(what=py$openbb$ta$bbands, args=as.list(rlang::call_match())[-1])
  o
}


#' Plots bollinger bands
#'
#' @description Wrapper for Python function ta.bbands_chart from OpenBB Terminal SDK
#'
#' @param data (data.frame) Dataframe of ohlc prices
#' @param symbol (character length 1) Ticker symbol
#' @param window (integer length 1) Length of window to calculate BB
#' @param n_std (numeric length 1) Number of standard deviations to show
#' @param mamode (character length 1) Method of calculating average
#' @param export (character length 1) Format of export file
#' @examples
#' ta.bbands_chart(window=15, n_std=2, mamode='sma')
#' @export
#* @get /ta.bbands_chart
ta.bbands_chart <- function(data, symbol = "", window = 15, n_std = 2, mamode = "sma", export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$ta$bbands_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Commodity channel index
#'
#' @description Wrapper for Python function ta.cci from OpenBB Terminal SDK
#'
#' @param window (integer length 1) Length of window
#' @param scalar (numeric length 1) Scalar variable
#' @examples
#' ta.cci(window=14, scalar=0.0015)
#' @export
#* @get /ta.cci
ta.cci <- function(data, window = 14, scalar = 0.0015) {
  o <- do.call(what=py$openbb$ta$cci, args=as.list(rlang::call_match())[-1])
  o
}


#' Plots CCI Indicator
#'
#' @description Wrapper for Python function ta.cci_chart from OpenBB Terminal SDK
#'
#' @examples
#' ta.cci_chart(window=14, scalar=0.0015)
#' @export
#* @get /ta.cci_chart
ta.cci_chart <- function(data, window = 14, scalar = 0.0015, symbol = "", export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$ta$cci_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Center of gravity
#'
#' @description Wrapper for Python function ta.cg from OpenBB Terminal SDK
#'
#' @param values (Python type: pandas.core.series.Series) Data to use with close being titled values
#' @param window (integer length 1) Length for indicator window
#' @export
#* @get /ta.cg
ta.cg <- function(values, window) {
  o <- do.call(what=py$openbb$ta$cg, args=as.list(rlang::call_match())[-1])
  o
}


#' Plots center of gravity Indicator
#'
#' @description Wrapper for Python function ta.cg_chart from OpenBB Terminal SDK
#'
#' @param data (Python type: pandas.core.series.Series) Series of values
#' @param window (integer length 1) Length of window
#' @param symbol (character length 1) Stock ticker
#' @param export (character length 1) Format to export data
#' @examples
#' ta.cg_chart(window=14)
#' @export
#* @get /ta.cg_chart
ta.cg_chart <- function(data, window = 14, symbol = "", export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$ta$cg_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Gets the Clenow Volatility Adjusted Momentum.  this is defined as the regression coefficient on log prices
#'
#' @description Wrapper for Python function ta.clenow from OpenBB Terminal SDK
#'
#' @param values (Python type: pandas.core.series.Series) Values to perform regression for
#' @param window (integer length 1) Length of lookback period
#' @examples
#' ta.clenow(window=90)
#' @export
#* @get /ta.clenow
ta.clenow <- function(values, window = 90) {
  o <- do.call(what=py$openbb$ta$clenow, args=as.list(rlang::call_match())[-1])
  o
}


#' Prints table and plots clenow momentum
#'
#' @description Wrapper for Python function ta.clenow_chart from OpenBB Terminal SDK
#'
#' @param data (Python type: pandas.core.series.Series) Series of values
#' @param symbol (character length 1) Symbol that the data corresponds to
#' @param window (integer length 1) Length of window
#' @param export (character length 1) Format to export data
#' @examples
#' ta.clenow_chart(window=90)
#' @export
#* @get /ta.clenow_chart
ta.clenow_chart <- function(data, symbol = "", window = 90, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$ta$clenow_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Returns a DataFrame of realized volatility quantiles.
#'
#' @description Wrapper for Python function ta.cones from OpenBB Terminal SDK
#'
#' @param data (data.frame) DataFrame of the OHLC data.
#' @param lower_q (numeric length 1) The lower quantile to calculate the realized volatility over time for.
#' @param upper_q (numeric length 1) The upper quantile to calculate the realized volatility over time for.
#' @param is_crypto (logical length 1) If true, volatility is calculated for 365 days instead of 252.
#' @param model (character length 1) The model to use for volatility calculation. Choices are:
#'     ["STD", "Parkinson", "Garman-Klass", "Hodges-Tompkins", "Rogers-Satchell", "Yang-Zhang"]
#' @export
#* @get /ta.cones
ta.cones <- function(data, lower_q = 0.25, upper_q = 0.75, is_crypto = FALSE, model = "STD") {
  o <- do.call(what=py$openbb$ta$cones, args=as.list(rlang::call_match())[-1])
  o
}


#' Plots the realized volatility quantiles for the loaded ticker.
#'
#' @description Wrapper for Python function ta.cones_chart from OpenBB Terminal SDK
#'
#' @param data (data.frame) DataFrame of OHLC prices.
#' @param symbol (character length 1) The ticker symbol.
#' @param lower_q (numeric length 1) The lower quantile to calculate for.
#' @param upper_q (numeric length 1) The upper quantile to for.
#' @param model (character length 1) The model to use for volatility calculation. Choices are:
#'     ["STD", "Parkinson", "Garman-Klass", "Hodges-Tompkins", "Rogers-Satchell", "Yang-Zhang"]
#' @param is_crypto (logical length 1) If true, volatility is calculated for 365 days instead of 252.
#' @export
#* @get /ta.cones_chart
ta.cones_chart <- function(data, symbol = "", lower_q = 0.25, upper_q = 0.75, model = "STD", is_crypto = FALSE, export = "", sheet_name) {
  o <- do.call(what=py$openbb$ta$cones_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Get the integer value for demark sequential indicator
#'
#' @description Wrapper for Python function ta.demark from OpenBB Terminal SDK
#'
#' @param values (Python type: pandas.core.series.Series) Series of close values
#' @export
#* @get /ta.demark
ta.demark <- function(values) {
  o <- do.call(what=py$openbb$ta$demark, args=as.list(rlang::call_match())[-1])
  o
}


#' Plot demark sequential indicator
#'
#' @description Wrapper for Python function ta.demark_chart from OpenBB Terminal SDK
#'
#' @param data (data.frame) DataFrame of values
#' @param symbol (character length 1) Symbol that the data corresponds to
#' @param min_to_show (integer length 1) Minimum value to show
#' @param export (character length 1) Format to export data
#' @examples
#' ta.demark_chart(min_to_show=5)
#' @export
#* @get /ta.demark_chart
ta.demark_chart <- function(data, symbol = "", min_to_show = 5, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$ta$demark_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Calculate Donchian Channels
#'
#' @description Wrapper for Python function ta.donchian from OpenBB Terminal SDK
#'
#' @param data (data.frame) Dataframe of ohlc prices
#' @param upper_length (integer length 1) Length of window to calculate upper channel
#' @param lower_length (integer length 1) Length of window to calculate lower channel
#' @examples
#' ta.donchian(upper_length=20, lower_length=20)
#' @export
#* @get /ta.donchian
ta.donchian <- function(data, upper_length = 20, lower_length = 20) {
  o <- do.call(what=py$openbb$ta$donchian, args=as.list(rlang::call_match())[-1])
  o
}


#' Plots donchian channels
#'
#' @description Wrapper for Python function ta.donchian_chart from OpenBB Terminal SDK
#'
#' @param data (data.frame) Dataframe of ohlc prices
#' @param symbol (character length 1) Ticker symbol
#' @param upper_length (integer length 1) Length of window to calculate upper channel
#' @param lower_length (integer length 1) Length of window to calculate lower channel
#' @param export (character length 1) Format of export file
#' @examples
#' ta.donchian_chart(upper_length=20, lower_length=20)
#' @export
#* @get /ta.donchian_chart
ta.donchian_chart <- function(data, symbol = "", upper_length = 20, lower_length = 20, export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$ta$donchian_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Gets exponential moving average (EMA) for stock
#'
#' @description Wrapper for Python function ta.ema from OpenBB Terminal SDK
#'
#' @param data (Python type: pandas.core.series.Series) Dataframe of dates and prices
#' @param length (integer length 1) Length of EMA window
#' @param offset (integer length 1) Length of offset
#' @examples
#' ta.ema(length=50, offset=0)
#' @export
#* @get /ta.ema
ta.ema <- function(data, length = 50, offset = 0) {
  o <- do.call(what=py$openbb$ta$ema, args=as.list(rlang::call_match())[-1])
  o
}


#' Calculate Fibonacci levels
#'
#' @description Wrapper for Python function ta.fib from OpenBB Terminal SDK
#'
#' @param data (data.frame) Dataframe of prices
#' @param limit (integer length 1) Days to look back for retracement
#' @examples
#' ta.fib(limit=120)
#' @export
#* @get /ta.fib
ta.fib <- function(data, limit = 120, start_date, end_date) {
  o <- do.call(what=py$openbb$ta$fib, args=as.list(rlang::call_match())[-1])
  o
}


#' Plots Calculated fibonacci retracement levels
#'
#' @description Wrapper for Python function ta.fib_chart from OpenBB Terminal SDK
#'
#' @param data (data.frame) OHLC data
#' @param limit (integer length 1) Days to lookback
#' @param symbol (character length 1) Ticker symbol
#' @param export (character length 1) Format to export data
#' @examples
#' ta.fib_chart(limit=120)
#' @export
#* @get /ta.fib_chart
ta.fib_chart <- function(data, limit = 120, start_date, end_date, symbol = "", export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$ta$fib_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Fisher Transform
#'
#' @description Wrapper for Python function ta.fisher from OpenBB Terminal SDK
#'
#' @param data (data.frame) Dataframe of OHLC prices
#' @param window (integer length 1) Length for indicator window
#' @examples
#' ta.fisher(window=14)
#' @export
#* @get /ta.fisher
ta.fisher <- function(data, window = 14) {
  o <- do.call(what=py$openbb$ta$fisher, args=as.list(rlang::call_match())[-1])
  o
}


#' Plots Fisher Indicator
#'
#' @description Wrapper for Python function ta.fisher_chart from OpenBB Terminal SDK
#'
#' @param data (data.frame) Dataframe of OHLC prices
#' @param window (integer length 1) Length of window
#' @param symbol (character length 1) Ticker string
#' @param export (character length 1) Format to export data
#' @examples
#' ta.fisher_chart(window=14)
#' @export
#* @get /ta.fisher_chart
ta.fisher_chart <- function(data, window = 14, symbol = "", export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$ta$fisher_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Gets hull moving average (HMA) for stock
#'
#' @description Wrapper for Python function ta.hma from OpenBB Terminal SDK
#'
#' @param data (Python type: pandas.core.series.Series) Dataframe of dates and prices
#' @param length (integer length 1) Length of SMA window
#' @param offset (integer length 1) Length of offset
#' @examples
#' ta.hma(length=50, offset=0)
#' @export
#* @get /ta.hma
ta.hma <- function(data, length = 50, offset = 0) {
  o <- do.call(what=py$openbb$ta$hma, args=as.list(rlang::call_match())[-1])
  o
}


#' Keltner Channels
#'
#' @description Wrapper for Python function ta.kc from OpenBB Terminal SDK
#'
#' @param data (data.frame) Dataframe of ohlc prices
#' @param window (integer length 1) Length of window
#' @param scalar (numeric length 1) Scalar value
#' @param mamode (character length 1) Type of filter
#' @param offset (integer length 1) Offset value
#' @examples
#' ta.kc(window=20, scalar=2, mamode='ema', offset=0)
#' @export
#* @get /ta.kc
ta.kc <- function(data, window = 20, scalar = 2, mamode = "ema", offset = 0) {
  o <- do.call(what=py$openbb$ta$kc, args=as.list(rlang::call_match())[-1])
  o
}


#' Plots Keltner Channels Indicator
#'
#' @description Wrapper for Python function ta.kc_chart from OpenBB Terminal SDK
#'
#' @examples
#' ta.kc_chart(window=20, scalar=2, mamode='ema', offset=0)
#' @export
#* @get /ta.kc_chart
ta.kc_chart <- function(data, window = 20, scalar = 2, mamode = "ema", offset = 0, symbol = "", export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$ta$kc_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Plots MA technical indicator
#'
#' @description Wrapper for Python function ta.ma from OpenBB Terminal SDK
#'
#' @param data (Python type: pandas.core.series.Series) Series of prices
#' @param offset (integer length 1) Offset variable
#' @param ma_type (character length 1) Type of moving average.  Either "EMA" "ZLMA" or "SMA"
#' @param symbol (character length 1) Ticker
#' @param export (character length 1) Format to export data
#' @examples
#' ta.ma(offset=0, ma_type='EMA')
#' @export
#* @get /ta.ma
ta.ma <- function(data, window, offset = 0, ma_type = "EMA", symbol = "", export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$ta$ma, args=as.list(rlang::call_match())[-1])
  o
}


#' Plots MA technical indicator
#'
#' @description Wrapper for Python function ta.ma_chart from OpenBB Terminal SDK
#'
#' @param data (Python type: pandas.core.series.Series) Series of prices
#' @param offset (integer length 1) Offset variable
#' @param ma_type (character length 1) Type of moving average.  Either "EMA" "ZLMA" or "SMA"
#' @param symbol (character length 1) Ticker
#' @param export (character length 1) Format to export data
#' @examples
#' ta.ma_chart(offset=0, ma_type='EMA')
#' @export
#* @get /ta.ma_chart
ta.ma_chart <- function(data, window, offset = 0, ma_type = "EMA", symbol = "", export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$ta$ma_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Moving average convergence divergence
#'
#' @description Wrapper for Python function ta.macd from OpenBB Terminal SDK
#'
#' @param data (Python type: pandas.core.series.Series) Values for calculation
#' @param n_fast (integer length 1) Fast period
#' @param n_slow (integer length 1) Slow period
#' @param n_signal (integer length 1) Signal period
#' @examples
#' ta.macd(n_fast=12, n_slow=26, n_signal=9)
#' @export
#* @get /ta.macd
ta.macd <- function(data, n_fast = 12, n_slow = 26, n_signal = 9) {
  o <- do.call(what=py$openbb$ta$macd, args=as.list(rlang::call_match())[-1])
  o
}


#' Plots MACD signal
#'
#' @description Wrapper for Python function ta.macd_chart from OpenBB Terminal SDK
#'
#' @param data (Python type: pandas.core.series.Series) Values to input
#' @param n_fast (integer length 1) Fast period
#' @param n_slow (integer length 1) Slow period
#' @param n_signal (integer length 1) Signal period
#' @param symbol (character length 1) Stock ticker
#' @param export (character length 1) Format to export data
#' @examples
#' ta.macd_chart(n_fast=12, n_slow=26, n_signal=9)
#' @export
#* @get /ta.macd_chart
ta.macd_chart <- function(data, n_fast = 12, n_slow = 26, n_signal = 9, symbol = "", export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$ta$macd_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' On Balance Volume
#'
#' @description Wrapper for Python function ta.obv from OpenBB Terminal SDK
#'
#' @param data (data.frame) Dataframe of OHLC prices
#' @export
#* @get /ta.obv
ta.obv <- function(data) {
  o <- do.call(what=py$openbb$ta$obv, args=as.list(rlang::call_match())[-1])
  o
}


#' Plots OBV technical indicator
#'
#' @description Wrapper for Python function ta.obv_chart from OpenBB Terminal SDK
#'
#' @param data (data.frame) Dataframe of ohlc prices
#' @param symbol (character length 1) Ticker
#' @param export (character length 1) Format to export data as
#' @export
#* @get /ta.obv_chart
ta.obv_chart <- function(data, symbol = "", export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$ta$obv_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Relative strength index
#'
#' @description Wrapper for Python function ta.rsi from OpenBB Terminal SDK
#'
#' @param data (Python type: pandas.core.series.Series) Dataframe of prices
#' @param window (integer length 1) Length of window
#' @param scalar (numeric length 1) Scalar variable
#' @param drift (integer length 1) Drift variable
#' @examples
#' ta.rsi(window=14, scalar=100, drift=1)
#' @export
#* @get /ta.rsi
ta.rsi <- function(data, window = 14, scalar = 100, drift = 1) {
  o <- do.call(what=py$openbb$ta$rsi, args=as.list(rlang::call_match())[-1])
  o
}


#' Plots RSI Indicator
#'
#' @description Wrapper for Python function ta.rsi_chart from OpenBB Terminal SDK
#'
#' @param data (Python type: pandas.core.series.Series) Values to input
#' @param window (integer length 1) Length of window
#' @param scalar (numeric length 1) Scalar variable
#' @param drift (integer length 1) Drift variable
#' @param symbol (character length 1) Stock ticker
#' @param export (character length 1) Format to export data
#' @examples
#' ta.rsi_chart(window=14, scalar=100, drift=1)
#' @export
#* @get /ta.rsi_chart
ta.rsi_chart <- function(data, window = 14, scalar = 100.0, drift = 1, symbol = "", export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$ta$rsi_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Garman-Klass volatility extends Parkinson volatility by taking into account the opening and closing price.
#'
#' @description Wrapper for Python function ta.rvol_garman_klass from OpenBB Terminal SDK
#'
#' @param data (data.frame) Dataframe of OHLC prices.
#' @param window (integer length 1) Length of window to calculate standard deviation.
#' @param trading_periods (integer length 1) Number of trading periods in a year.
#' @param is_crypto (logical length 1) If true, trading_periods is defined as 365.
#' @param clean (Python type: inspect._empty) Whether to clean the data or not by dropping NaN values.
#' @export
#* @get /ta.rvol_garman_klass
ta.rvol_garman_klass <- function(data, window = 30, trading_periods = 252, is_crypto = FALSE, clean) {
  o <- do.call(what=py$openbb$ta$rvol_garman_klass, args=as.list(rlang::call_match())[-1])
  o
}


#' Hodges-Tompkins volatility is a bias correction for estimation using an overlapping data sample.
#'
#' @description Wrapper for Python function ta.rvol_hodges_tompkins from OpenBB Terminal SDK
#'
#' @param data (data.frame) Dataframe of OHLC prices.
#' @param window (integer length 1) Length of window to calculate standard deviation.
#' @param trading_periods (integer length 1) Number of trading periods in a year.
#' @param is_crypto (logical length 1) If true, trading_periods is defined as 365.
#' @param clean (Python type: inspect._empty) Whether to clean the data or not by dropping NaN values.
#' @export
#* @get /ta.rvol_hodges_tompkins
ta.rvol_hodges_tompkins <- function(data, window = 30, trading_periods = 252, is_crypto = FALSE, clean) {
  o <- do.call(what=py$openbb$ta$rvol_hodges_tompkins, args=as.list(rlang::call_match())[-1])
  o
}


#' Parkinson volatility uses the high and low price of the day rather than just close to close prices.
#'
#' @description Wrapper for Python function ta.rvol_parkinson from OpenBB Terminal SDK
#'
#' @param data (data.frame) Dataframe of OHLC prices.
#' @param window (integer length 1) Length of window to calculate standard deviation.
#' @param trading_periods (integer length 1) Number of trading periods in a year.
#' @param is_crypto (logical length 1) If true, trading_periods is defined as 365.
#' @param clean (Python type: inspect._empty) Whether to clean the data or not by dropping NaN values.
#' @export
#* @get /ta.rvol_parkinson
ta.rvol_parkinson <- function(data, window = 30, trading_periods = 252, is_crypto = FALSE, clean) {
  o <- do.call(what=py$openbb$ta$rvol_parkinson, args=as.list(rlang::call_match())[-1])
  o
}


#' Rogers-Satchell is an estimator for measuring the volatility with an average return not equal to zero.
#'
#' @description Wrapper for Python function ta.rvol_rogers_satchell from OpenBB Terminal SDK
#'
#' @param data (data.frame) Dataframe of OHLC prices.
#' @param window (integer length 1) Length of window to calculate standard deviation.
#' @param trading_periods (integer length 1) Number of trading periods in a year.
#' @param is_crypto (logical length 1) If true, trading_periods is defined as 365.
#' @param clean (Python type: inspect._empty) Whether to clean the data or not by dropping NaN values.
#' @export
#* @get /ta.rvol_rogers_satchell
ta.rvol_rogers_satchell <- function(data, window = 30, trading_periods = 252, is_crypto = FALSE, clean) {
  o <- do.call(what=py$openbb$ta$rvol_rogers_satchell, args=as.list(rlang::call_match())[-1])
  o
}


#' Standard deviation measures how widely returns are dispersed from the average return.
#'
#' @description Wrapper for Python function ta.rvol_std from OpenBB Terminal SDK
#'
#' @param data (data.frame) Dataframe of OHLC prices.
#' @param window (integer length 1) Length of window to calculate standard deviation.
#' @param trading_periods (integer length 1) Number of trading periods in a year.
#' @param is_crypto (logical length 1) If true, trading_periods is defined as 365.
#' @param clean (logical length 1) Whether to clean the data or not by dropping NaN values.
#' @export
#* @get /ta.rvol_std
ta.rvol_std <- function(data, window = 30, trading_periods = 252, is_crypto = FALSE, clean = TRUE) {
  o <- do.call(what=py$openbb$ta$rvol_std, args=as.list(rlang::call_match())[-1])
  o
}


#' Yang-Zhang volatility is the combination of the overnight (close-to-open volatility).
#'
#' @description Wrapper for Python function ta.rvol_yang_zhang from OpenBB Terminal SDK
#'
#' @param data (data.frame) Dataframe of OHLC prices.
#' @param window (integer length 1) Length of window to calculate standard deviation.
#' @param trading_periods (integer length 1) Number of trading periods in a year.
#' @param is_crypto (logical length 1) If true, trading_periods is defined as 365.
#' @param clean (Python type: inspect._empty) Whether to clean the data or not by dropping NaN values.
#' @export
#* @get /ta.rvol_yang_zhang
ta.rvol_yang_zhang <- function(data, window = 30, trading_periods = 252, is_crypto = TRUE, clean) {
  o <- do.call(what=py$openbb$ta$rvol_yang_zhang, args=as.list(rlang::call_match())[-1])
  o
}


#' Gets simple moving average (SMA) for stock
#'
#' @description Wrapper for Python function ta.sma from OpenBB Terminal SDK
#'
#' @param data (Python type: pandas.core.series.Series) Dataframe of dates and prices
#' @param length (integer length 1) Length of SMA window
#' @param offset (integer length 1) Length of offset
#' @examples
#' ta.sma(length=50, offset=0)
#' @export
#* @get /ta.sma
ta.sma <- function(data, length = 50, offset = 0) {
  o <- do.call(what=py$openbb$ta$sma, args=as.list(rlang::call_match())[-1])
  o
}


#' Standard deviation measures how widely returns are dispersed from the average return.
#'
#' @description Wrapper for Python function ta.standard_deviation from OpenBB Terminal SDK
#'
#' @param data (data.frame) Dataframe of OHLC prices.
#' @param window (integer length 1) Length of window to calculate standard deviation.
#' @param trading_periods (integer length 1) Number of trading periods in a year.
#' @param is_crypto (logical length 1) If true, trading_periods is defined as 365.
#' @param clean (logical length 1) Whether to clean the data or not by dropping NaN values.
#' @export
#* @get /ta.standard_deviation
ta.standard_deviation <- function(data, window = 30, trading_periods = 252, is_crypto = FALSE, clean = TRUE) {
  o <- do.call(what=py$openbb$ta$standard_deviation, args=as.list(rlang::call_match())[-1])
  o
}


#' Stochastic oscillator
#'
#' @description Wrapper for Python function ta.stoch from OpenBB Terminal SDK
#'
#' @param data (data.frame) Dataframe of OHLC prices
#' @param fastkperiod (integer length 1) Fast k period
#' @param slowdperiod (integer length 1) Slow d period
#' @param slowkperiod (integer length 1) Slow k period
#' @examples
#' ta.stoch(fastkperiod=14, slowdperiod=3, slowkperiod=3)
#' @export
#* @get /ta.stoch
ta.stoch <- function(data, fastkperiod = 14, slowdperiod = 3, slowkperiod = 3) {
  o <- do.call(what=py$openbb$ta$stoch, args=as.list(rlang::call_match())[-1])
  o
}


#' Plots stochastic oscillator signal
#'
#' @description Wrapper for Python function ta.stoch_chart from OpenBB Terminal SDK
#'
#' @param data (data.frame) Dataframe of OHLC prices
#' @param fastkperiod (integer length 1) Fast k period
#' @param slowdperiod (integer length 1) Slow d period
#' @param slowkperiod (integer length 1) Slow k period
#' @param symbol (character length 1) Stock ticker symbol
#' @param export (character length 1) Format to export data
#' @examples
#' ta.stoch_chart(fastkperiod=14, slowdperiod=3, slowkperiod=3)
#' @export
#* @get /ta.stoch_chart
ta.stoch_chart <- function(data, fastkperiod = 14, slowdperiod = 3, slowkperiod = 3, symbol = "", export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$ta$stoch_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Gets volume weighted average price (VWAP)
#'
#' @description Wrapper for Python function ta.vwap from OpenBB Terminal SDK
#'
#' @param data (data.frame) Dataframe of dates and prices
#' @param offset (integer length 1) Length of offset
#' @examples
#' ta.vwap(offset=0)
#' @export
#* @get /ta.vwap
ta.vwap <- function(data, offset = 0) {
  o <- do.call(what=py$openbb$ta$vwap, args=as.list(rlang::call_match())[-1])
  o
}


#' Plots VWMA technical indicator
#'
#' @description Wrapper for Python function ta.vwap_chart from OpenBB Terminal SDK
#'
#' @param data (data.frame) Dataframe of OHLC prices
#' @param symbol (character length 1) Ticker
#' @param offset (integer length 1) Offset variable
#' @param interval (character length 1) Interval of data
#' @param export (character length 1) Format to export data
#' @examples
#' ta.vwap_chart(offset=0)
#' @export
#* @get /ta.vwap_chart
ta.vwap_chart <- function(data, symbol = "", start_date, end_date, offset = 0, interval = "", export = "", sheet_name, external_axes) {
  o <- do.call(what=py$openbb$ta$vwap_chart, args=as.list(rlang::call_match())[-1])
  o
}


#' Gets weighted moving average (WMA) for stock
#'
#' @description Wrapper for Python function ta.wma from OpenBB Terminal SDK
#'
#' @param data (Python type: pandas.core.series.Series) Dataframe of dates and prices
#' @param length (integer length 1) Length of SMA window
#' @param offset (integer length 1) Length of offset
#' @examples
#' ta.wma(length=50, offset=0)
#' @export
#* @get /ta.wma
ta.wma <- function(data, length = 50, offset = 0) {
  o <- do.call(what=py$openbb$ta$wma, args=as.list(rlang::call_match())[-1])
  o
}


#' Gets zero-lagged exponential moving average (ZLEMA) for stock
#'
#' @description Wrapper for Python function ta.zlma from OpenBB Terminal SDK
#'
#' @param data (Python type: pandas.core.series.Series) Dataframe of dates and prices
#' @param length (integer length 1) Length of EMA window
#' @param offset (integer length 1) Length of offset
#' @examples
#' ta.zlma(length=50, offset=0)
#' @export
#* @get /ta.zlma
ta.zlma <- function(data, length = 50, offset = 0) {
  o <- do.call(what=py$openbb$ta$zlma, args=as.list(rlang::call_match())[-1])
  o
}

