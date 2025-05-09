#' @title A guide to load_sds()
#' @description
#' - This function automatically loads and optionally installs R packages required for specific Statistical and Data Sciences courses at Smith College.
#' - Designed to streamline course preparation by handling core packages with one call.
#'
#' @param sds_class A string indicating the course code (e.g., `"sds_100"`). Must be one of the defined course names in `class_packages`.
#' @param install_missing Logical. If `TRUE`, missing packages will be installed automatically. If `FALSE`, the function will only attempt to load already-installed packages.
#' @details
#' - **Valid course names**: `"sds_100"`, `"sds_192"`, `"sds_220"`, `"sds_291"`.
#' - The function stops with an error and notifies user if:
#'   - The `sds_class` argument is unquoted (e.g., `load_sds(sds_100)` instead of `load_sds("sds_100")`).
#'   - The course name is not one of the included courses in `class_packages`.
#'
#' @return
#' Invisible, named logical vector indicating the class packages that were successfully loaded (`TRUE`/`FALSE`).
#'
#' @examples
#' \dontrun{
#' # Standard usage (installs missing packages by default):
#' load_sds("sds_291")
#'
#' # Loads without installing missing packages:
#' load_sds("sds_100", install_missing = FALSE)
#' }
#'
#' @importFrom utils install.packages
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
