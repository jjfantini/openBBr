#' Initialize the OpenBB environment
#'
#' @description This function sets up the Python virtual environment, imports necessary Python
#' libraries, and initializes the OpenBB environment.
#'
#' @return A logical value indicating whether the Python environment is available.
#' @export
init <- function() {
    # Specify Python virtual environment
    reticulate::use_condaenv(here::here("openbb_env"))

    # Setup OpenBB
    reticulate::py_run_string("from openbb_terminal.sdk import openbb")
    reticulate::py_run_string("import pandas as pd")
    reticulate::py_run_string("import numpy as np")

    # Check if Python is available
    o <- reticulate::py_available(initialize = T)
    print("Python Available: ", o)
}