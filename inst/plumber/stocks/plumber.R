library(plumber)

#* @apiTitle Simple API

#* Return hello world
#* @get /hello
openBBr:::hello

#* Echo back the message provided
#* @param msg The message to echo
#* @get /echo
openBBr:::echo

#* Collect stock price data from OpenBB SDK
#* @param symbol stock symbol you want to collect
#* @param y Second value
#* @get /stocks
openBBr:::openbb_stocks_load