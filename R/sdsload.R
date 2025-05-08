#' @title Do the annotations here bae
#' @description
#' Given a comic number, the `xkcd()` function calls the xkcd JSON API and returns metadata about the comic in the form of a list object.
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
