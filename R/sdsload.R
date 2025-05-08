#' @title SDSLOAD
#' @description
#' - This package provides a function to automatically load or install R packages associated with specific SDS courses at Smith.
#'
#' Given a comic number, the `xkcd()` function calls the xkcd JSON API and returns metadata about the comic in the form of a list object.
#'
#' @param sds_class A string indicating the course code (e.g "sds_100").Must be one of the defined course names in 'class_packages'.
#' @param install_missing Logical. If 'TRUE' missing packages will be installed. If 'FALSE', only attempt to load already installed packages.
#' @details
#' Valid course names include:"sds_100", "sds_192", "sds_220", and "sds_291".The function will stop and show an error message if the input is unquoted or invalid.
#'
#' @importFrom jsonlite read_json
#' @export
load_sds <- function(sds_class, install_missing = TRUE) {

  users_class <- substitute(sds_class)

  if (is.symbol(users_class)) {
    stop(
      "\nClass names must be in quotes.\n",
      "Correct usage: load_sds(\"", as.character(users_class), "\")", "\n",
      "Available classes in this package are: sds_100, sds_192, sds_220, sds_291"
    )
  }

  if (!sds_class %in% names(class_packages)) {
    stop(
      "\nOops! Class not found.\n",
      "Available classes in this package are: sds_100, sds_192, sds_220, sds_291"
    )
  }

  loaded <- setNames(logical(length(sds_class)), sds_class)
  pkgs <- class_packages[[sds_class]]

  for (pkg in pkgs) {
    if (!require(pkg, character.only = TRUE, quietly = TRUE)) {
      if (install_missing) {
        message("Installing package:", pkg)
        tryCatch({
          utils::install.packages(pkg, quiet = TRUE)
          if (require(pkg, character.only = TRUE, quietly = TRUE)) {
            loaded[pkg] <- TRUE
            message("Successfully installed and loaded:", pkg)
          } else {
            warning("Installation succeeded but loading failed for:", pkg)
          }
        }, error = function(e) {
          warning("Failed to install", pkg, ": ", e$message)
        })
      }
    } else {
      loaded[pkg] <- TRUE
      message("Package loaded: ", pkg)
    }
  }
}
