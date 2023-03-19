# Load required libraries
library(plumber)
library(reticulate)

# Specify Python virtual environment
use_virtualenv("C:/Users/jjfan/OneDrive/Documents/R_WD/openBBr/openbb_env", required = TRUE)

# Import OpenBB SDK
openbb_sdk <- import("openbb_sdk")
