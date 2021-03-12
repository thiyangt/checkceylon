#' Check the availability of ceylondata
#' 
#' @importFrom devtools install_github
#' @export
check_ceylondata <- function(){
  ceylondata_version <- "0.0.0.9000"
  if (!requireNamespace("ceylondata", quietly = TRUE)) {
    message("The ceylondata package needs to be installed. Use install_ceylondata()")
    
  } else if (utils::packageVersion("ceylondata") < ceylondata_version) {
    message("The ceylondata package needs to be updated.Use install_ceylondata()")
    
  } else {
    message("You are ready to use ceylon.")}
  
}

