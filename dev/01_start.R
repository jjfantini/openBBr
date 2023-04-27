# GPT-4 Suggestions ============================================================================================
# Step 1: Install and load the reticulate package
install.packages("reticulate")
library(reticulate)

# Step 2: Import the Python SDK library in your R code
python_sdk <- import("your_python_sdk_library")

# Step 3: Use the Python SDK library functions and objects within your R code
# Example: Call the example_function from the Python SDK library with arguments arg1 and arg2
result <- python_sdk$example_function(arg1, arg2)

# Additional tips for minimizing latency and optimizing code usage and speed:

# Tip 1: Use R's built-in functions and data structures whenever possible
# Example: Use R's sum function instead of converting to Python and back
r_sum <- sum(r_vector)

# Tip 2: If you need to work with large data sets, consider using Python's built-in functions
# Example: Use Python's pandas library for data manipulation before passing it to R
pandas <- import("pandas")
python_df <- pandas$DataFrame$from_dict(your_data)
processed_python_df <- python_df$your_processing_function()

# Tip 3: When possible, use vectorized operations in both R and Python
# Example: Use R's sapply function for applying a Python function to each element of an R vector
result_vector <- sapply(r_vector, function(x) python_sdk$example_function(x))

# Tip 4: If the Python SDK library has many dependencies, consider using a virtual environment
# Example: Create a virtual environment and install the Python SDK library and its dependencies
reticulate::conda_create(envname = here::here("obb"), python_version = "3.10")
reticulate::conda_install("obb", packages = c("openbb_terminal.sdk", "pandas", "numpy"))

# Activate conda_env
reticulate::use_condaenv("obb")

#Update conda_env
reticulate::conda_update("python = 3.10")



# START DEV: ===================================================================================================
install.packages("reticulate")
library(reticulate)

# Step 1: Create a local Conda environment ----
reticulate::conda_create(envname = here::here("obb"), python_version = "3.10")

# Step 1.1: Use the created Conda environment
reticulate::use_condaenv(here::here("obb"))

# Step 1.2: Install pandas and numpy in the environment
reticulate::conda_install(here::here("obb"), packages = c("pandas", "numpy"))

# Step 1.3: Install openbb package using pip
reticulate::py_install("openbb", pip = T)

# Step 2: Run openBBr::init() ----
openBBr::init()
