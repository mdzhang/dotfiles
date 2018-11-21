options(
  repos = structure(c(CRAN="https://cloud.r-project.org"))
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
  "colorout",
  "tidyverse"
)

# if I execute this in this file, it weirdly enters an infinite loop on 3.5.1
# but if this isn't here and I run manually, it's fine :(
install_pkgs <- function() {
  if (!require("devtools")) utils::install.packages("devtools")
  library("devtools")

  utils::install.packages(pkgs, character.only = TRUE)
  devtools::install_github(gh_pkgs, character.only = TRUE)
}

# lapply(autoload_pkgs, library, character.only = TRUE)
