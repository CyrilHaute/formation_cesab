#############################################################
#
# download_function.R : download the data needed for the analyses
#
#############################################################


source("R/download_function.R")

urls <- list("main/data/pantheria/PanTHERIA_1-0_WR05_Aug2008.txt",
             "main/data/wildfinder/wildfinder-ecoregions_list.csv",
             "main/data/wildfinder/wildfinder-ecoregions_species.csv",
             "main/data/wildfinder/wildfinder-mammals_list.csv")

data_name <- c("pantheria", "wildfinder")

lapply(1:length(urls), function(i) { 
  
  download_function(url = "https://raw.githubusercontent.com/rdatatoolbox/datarepo/",
                    data_name = data_name[which(stringr::str_detect(urls[[i]], data_name) == TRUE)],
                    commit_name = urls[[i]])
  
})

