#' Initialize the OpenBB environment
#'
#' @description This function sets up the correct path to the Python virtual
#' environment, imports necessary Python libraries, and initializes the OpenBB
#' environment.
#'
#' @return A logical value indicating whether the Python environment is
#' available.
#' @export
init <- function(assign_py = TRUE) {
    # Set RETICULATE_PYTHON based on the operating system
    if (Sys.info()["sysname"] == "Windows") {
        Sys.setenv(RETICULATE_PYTHON = here::here("obb/python.exe"))
    } else {
        # do i use python or python 3.10??
        Sys.setenv(RETICULATE_PYTHON = here::here("obb/bin/python3.10"))
    }

    # Specify Python virtual environment
    reticulate::use_condaenv(here::here("obb"), required = TRUE)

    # Setup OpenBB
    reticulate::py_run_string("from openbb_terminal.sdk import openbb")
    reticulate::py_run_string("import pandas as pd")
    reticulate::py_run_string("import numpy as np")

    # Check if Python is available
    o <- reticulate::py_available(initialize = TRUE)
    print(paste("Python Available:", o))

    # Assign python __main__ module to 'py' object in R environment
    if (assign_py == TRUE) {
        py <<- reticulate::py
    }
}
