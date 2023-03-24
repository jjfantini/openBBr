# Check if plumber and reticulate packages are installed, if not, install them
library(utils)

if (!"plumber" %in% installed.packages()) install.packages("plumber")
if (!"reticulate" %in% installed.packages()) install.packages("reticulate")

# Load the plumber and reticulate packages
library(plumber)
library(reticulate)

# Specify Python virtual environment
reticulate::use_condaenv("openbb_env")

# Setup OpenBB, accessible from py$openbb
py_run_string("from openbb_terminal.sdk import openbb")
py_run_string("import pandas as pd")
py_run_string("import numpy as np")

cli::cat_boxx("Is Python Available?")
py_available(initialize = T)
