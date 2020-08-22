pollutantmean <- function(directory, pollutant, id = 1:332){
  # Create a list of files
  files <- list.files(directory, full.names = TRUE)
  
  # Create an empty data-frame to add all files
  data <- data.frame()
  
  # Loop through all the files for each ID
  for(i in id){
    # Read the file
    temp_file <- read.csv(files[i], header = TRUE)
    
    # Add files to the data frame
    data <- rbind(data, temp_file)
  }
  # Calculate mean of the pollutant
  # Remove NA Values as well
  return(mean(data[,pollutant], na.rm = TRUE))
}

source("pollutantmean.R")
pollutantmean("specdata", "sulfate", 1:10)

pollutantmean("specdata", "nitrate", 70:72)

pollutantmean("specdata", "nitrate", 23)