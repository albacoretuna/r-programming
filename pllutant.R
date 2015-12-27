
pollutantmean <- function(directory, pollutant, id = 1:332) {
 all_files <- list.files(directory, full.names = TRUE)
 all_files
 inf <- data.frame()
 
 for ( item in id) {
     inf <- rbind(read.csv(all_files[item]))
 }
 
 mean(inf[, pollutant], na.rm = TRUE)
}
