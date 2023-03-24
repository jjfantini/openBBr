init <- function() {
  # Specify Python virtual environment
  reticulate::use_condaenv("openbb_env")

  # Setup OpenBB
  reticulate::py_run_string("from openbb_terminal.sdk import openbb")

  reticulate::py_available(initialize = T)
}
