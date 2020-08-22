complete <- function(directory, id = 1:332){
  # Create a list of files
  files <- list.files(directory, full.names = TRUE)
  
  # Create an empty data-frame to add all files
  data <- data.frame()
  
  # Loop through all the files for each ID
  for(i in id){
    # Read the file
    temp_file <- read.csv(files[i], header = TRUE)
    
    # Remove rows without complete data
    temp_file <- na.omit(temp_file)
    
    # Count of rows with complete data
    NoBs <- nrow(temp_file)
    
    # Add files to the data frame
    data <- rbind(data, data.frame(i, NoBs))
  }
  return(data)
}

source("complete.R")
complete("specdata", 1)

complete("specdata", c(2, 4, 8, 10, 12))

complete("specdata", 30:25)

complete("specdata", 3)