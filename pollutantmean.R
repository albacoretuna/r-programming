
pollutantmean <- function(directory, pollutant, id = 1:332) {
 all_files <- list.files(directory, full.names = TRUE)
 inf <- data.frame()
 
 for ( item in id) {
     inf <- rbind(inf,read.csv(all_files[item]))
 }
 
 mean(inf[, pollutant], na.rm = TRUE)
}
pollutantmean("specdata", "sulfate", 1:10)