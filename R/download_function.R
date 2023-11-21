
#' Data download function
#'
#' @param url rovide the url the data comes from
#' @param data_name name of the data either pantheria or wildfinder
#' @param commit_name name of the github commit the data comes from
#'
#' @return
#' @export
#'
#' @examples

download_function <- function(url,
                              data_name,
                              commit_name
                              ) {
  
  destination <- file.path("data", data_name)
  dir.create(destination)
  download.file(url = file.path(url, commit_name), destfile = file.path(destination, gsub(file.path("main/data", data_name), "", commit_name)),  mode = "wb")
  
  }

