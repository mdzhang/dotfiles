options(
  repos = structure(c(CRAN = "https://cloud.r-project.org"))
)

base_pkgs <- c(
  "stats"
)

# commonly used packages
# 'IRkernel' for Jupyter notebook interop
pkgs <- c(
  "assertr",          # code assertions
  "data.table",       # convenience data.frame wrapper
  "ggplot2",          # static visualizations
  "infer",            # statistical inference
  "knitr",
  "lintr",            # code linting
  "plotly",           # interactive visualizations
  "pryr",             # code inspection
  "rmarkdown",
  "styler",           # code style
  "testthat",         # test framework
  "tidyverse"
)

# for geospatial analysis
geo_pkgs <- c(
  "ggmap",            # maps for ggplot
  "leaflet",          # interactive maps
  "raster",           # best for raster data
  "rgdal",
  "rgeos",
  "rnaturalearth",    # world map data
  "sf",               # spatial data frames; modern alternative to sp
  "sp",               # spatial data classes
  "spatialkernel",
  "tigris",           # easy download/import of US census geographies
  "tmap"              # ggmap alternative
)

# packages in tidyverse
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

# additional tidyverse packages we'd like to load automatically
# but that aren't loaded when loading tidyverse
noncore_tidy_pkgs <- c(
  "lubridate",        # date utilities
  "DBI",              # database connection utils
  "haven",
  "httr",             # HTTP requests
  "jsonlite",
  "readxl"
)

# statistical packages
stats_pkgs <- c(
  "class",            # classification
  "FNN",              # knn
  "spatstat",         # spatial statistics
  "naivebayes",
  "klaR",             # classification
  "mgcv",             # GAM
  "infer",
  "lmPerm",           # permutation tests for linear models
  "boot",             # bootstrapping
  "matrixStats",
  "descr",            # descriptive statistics
  "rpart",            # decision trees
  "cluster",          # cluster analysis
  "dendextend",       # colored dendrograms
  "randomForest",
  "Hmisc",
  "pROC"              # ROC curves
)

# performance and optimization packages
opt_pkgs <- c(
  "benchmarkme",     # code benchmarking
  "bigmemory",       # for handling large datasets
  "microbenchmark",  # code benchmarking
  "profvis"          # code profiling
)

# packages from github, not CRAN
gh_pkgs <- c(
  "jalvesaq/colorout",  # colorized repl
  "klutometis/roxygen"  # code comments
)

# packages to load in load_pkgs() call
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
# load_pkgs()
