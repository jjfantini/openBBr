# Check if plumber and reticulate packages are installed, if not, install them
library(utils)

if (!"plumber" %in% installed.packages()) install.packages("plumber")
if (!"reticulate" %in% installed.packages()) install.packages("reticulate")

# Load the plumber and reticulate packages
library(plumber)
library(reticulate)

# Specify Python virtual environment
reticulate::use_condaenv("openbb_env")

# Setup OpenBB
# py_run_string("from openbb_terminal.sdk import openbb")
#
# py_available(initialize = T)
