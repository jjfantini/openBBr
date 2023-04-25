init <- function() {
  # Specify Python virtual environment
  reticulate::use_condaenv(here::here("openbb_env"))

  # Setup OpenBB
  reticulate::py_run_string("from openbb_terminal.sdk import openbb")
  reticulate::py_run_string("import pandas as pd")
  reticulate::py_run_string("import numpy as np")

  reticulate::py_available(initialize = T)
}
