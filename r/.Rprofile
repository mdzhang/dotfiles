options(
  repos = structure(c(CRAN="https://cloud.r-project.org"))
)

base_pkgs <- c(
  "stats"
)
pkgs <- c(
  "assertr",
  "data.table",
  "knitr",
  "lintr",
  "rmarkdown",
  "styler",
  "testthat",
  "tidyverse"
)
core_tidy_pkgs <- c(
  "ggplot2",
  "tibble",
  "tidyr",
  "readr",
  "purrr",
  "dplyr",
  "stringr",
  "forcats"
)
noncore_tidy_pkgs <- c(
  "lubridate",
  "DBI",
  "haven",
  "httr",
  "jsonlite",
  "readxl"
)
opt_pkgs <- c(
  "benchmarkme",
  "bigmemory",
  "microbenchmark",
  "profvis"          # code profiling
)
gh_pkgs <- c(
  "jalvesaq/colorout",
  "klutometis/roxygen"
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

  utils::install.packages(pkgs, character.only = TRUE)
  devtools::install_github(gh_pkgs, character.only = TRUE)
}

# autoload all packages in autoload_pkgs
# this is for convenience in REPL, obviously scripts should not rely on this
loaded_pkgs <- utils::tail(
  lapply(autoload_pkgs, library, character.only = TRUE),
  n = 1)[[1]]
# print loaded packages, avoiding repeating tidyverse packages
setdiff(loaded_pkgs, c(core_tidy_pkgs, "tidyverse"))
