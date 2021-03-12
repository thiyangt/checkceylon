#'Install ceylondata package
#'@importFrom devtools install_github
#'@importFrom utils menu
#'@export
install_ceylondata <- function(){
  instructions <- paste("Please try installing the package for yourself",
                        "using the following command: \n",
                        "devtools::install_github('thiyangt/ceylondata')")
  
  
  error_func <- function(e) {
    stop(paste("Failed to install the ceylondata package.\n", instructions))
  }
  
  input <- 1
  if (interactive()) {
    input <- utils::menu(c("Yes", "No"),
                         title = "Install the ceylondata package?")
  }
  
  if (input == 1) {
    message("Installing ceylondata package.")
    tryCatch(devtools::install_github("thiyangt/ceylondata"),
             error = error_func, warning = error_func)
  } else {
    stop(paste("The ceylondata package is necessary for that method.\n",
               instructions))
  }
  
  
  
  
  
}