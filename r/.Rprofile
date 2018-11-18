options(
  repos = structure(c(CRAN="https://cloud.r-project.org"))
)

pkgs <- c(
  "assertr",
  "data.table",
  "dplyr",
  "knitr",
  "lubridate",
  "purrr",
  "readr",
  "rmarkdown",
  "stringr",
  "testthat",
  "tidyr"
)
opt_pkgs <- c(
  "DBI",
  "benchmarkme",
  "bigmemory",
  "haven",            # SAS, SPSS, Stata
  "httr",             # HTTP
  "jsonlite",
  "microbenchmark",
  "profvis",          # code profiling
  "readxl"            # excel
)
gh_pkgs <- c(
  "jalvesaq/colorout",
  "klutometis/roxygen"
)
autoload_pkgs <- c(
  "colorout",
  "dplyr",
  "lubridate",
  "purrr",
  "readr",
  "stringr",
  "tidyr"
)

# if I execute this in this file, it weirdly enters an infinite loop on 3.5.1
# but if this isn't here and I run manually, it's fine :(
install_pkgs <- function() {
  if (!require("devtools")) utils::install.packages("devtools")
  if (!require("pacman")) devtools::install_github("trinker/pacman")
  do.call(pacman::p_install, as.list(pkgs), character.only = TRUE)
  do.call(pacman::p_install_gh, as.list(gh_pkgs), character.only = TRUE)
}

do.call(pacman::p_load, as.list(autoload_pkgs))
