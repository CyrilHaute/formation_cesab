
download_function <- function(url, # provide the url the data comes from
                              data_name, # name of the data either pantheria or wildfinder
                              commit_name # name of the github commit the data comes from
                              ) {
  
  destination <- file.path("data", data_name)
  dir.create(destination)
  download.file(url = file.path(url, commit_name), destfile = file.path(destination, gsub(file.path("main/data", data_name), "", commit_name)),  mode = "wb")
  
  }

