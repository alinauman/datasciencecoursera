corr <- function(directory, threshold = 0){
  # Create a list of files
  files <- list.files(directory, full.names = TRUE)
  
  # Create an empty vector
  data <- vector(mode = "numeric", length = 0)
  
  for(i in 1:length(files)){
    # Read the file
    temp_file <- read.csv(files[i], header = TRUE)
    
    # Remove NA values
    temp_file <- temp_file[complete.cases(temp_file),]
    
    # Row Count ~ Observations
    count <- nrow(temp_file)
    
    # Threshold
    if(count > threshold){
      data <- c(data, cor(temp_file$nitrate, temp_file$sulfate))
    }
  }
  return(data)
}

cr <- corr("specdata", 150)
head(cr)

summary(cr)

cr <- corr("specdata", 400)
head(cr)

summary(cr)

cr <- corr("specdata", 5000)
summary(cr)

length(cr)

cr <- corr("specdata")
summary(cr)

length(cr)