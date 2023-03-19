library(plumber)
pr <- plumber$new()

pr$handle("GET", "/delay", openBBr:::delay)

pr