options(
  repos = structure(c(CRAN="https://cloud.r-project.org"))
)

base_pkgs <- c(
  "stats"
)
pkgs <- c(
  "assertr",          # code assertions
  "data.table",       # convenience data.frame wrapper
  "ggplot2",          # static visualizations
  "knitr",
  "lintr",            # code linting
  "plotly",           # interactive visualizations
  "pryr",             # code inspection
  "rmarkdown",
  "styler",           # code style
  "testthat",         # test framework
  "tidyverse"
)
core_tidy_pkgs <- c(
  "ggplot2",          # visualization
  "tibble",
  "tidyr",
  "readr",            # reading files
  "purrr",            # fp methods
  "dplyr",
  "stringr",          # string utilities
  "forcats"
)
noncore_tidy_pkgs <- c(
  "lubridate",        # date utilities
  "DBI",              # database connection utils
  "haven",
  "httr",             # HTTP requests
  "jsonlite",
  "readxl"
)
opt_pkgs <- c(
  "benchmarkme",     # code benchmarking
  "bigmemory",       # for handling large datasets
  "microbenchmark",  # code benchmarking
  "profvis"          # code profiling
)
gh_pkgs <- c(
  "jalvesaq/colorout",  # colorized repl
  "klutometis/roxygen"  # code comments
)
autoload_pkgs <- c(
  # ensure base packages loaded first so tidyverse packages mask base methods
  base_pkgs,
  "colorout",
  "tidyverse",
  noncore_tidy_pkgs
)

install_pkgs <- function() {
  if (!require("devtools")) utils::install.packages("devtools")
  library("devtools")

  utils::install.packages(pkgs)
  devtools::install_github(gh_pkgs)
}

load_pkgs <- function() {
  # autoload all packages in autoload_pkgs
  loaded_pkgs <- utils::tail(
    lapply(autoload_pkgs, library, character.only = TRUE),
    n = 1)[[1]]
  # print loaded packages, avoiding repeating tidyverse packages
  setdiff(loaded_pkgs, c(core_tidy_pkgs, "tidyverse"))
}


# this is for convenience in REPL, obviously scripts should not rely on this
load_pkgs()
