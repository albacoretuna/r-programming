# dataset_url <- "http://s3.amazonaws.com/practice_assignment/diet_data.zip"
# download.file(dataset_url, "diet_data.zip")
# unzip("diet_data.zip", exdir = "diet_data")


# list files
files <- list.files('diet_data')
dir('diet_data')
files[3:5]
files
andy <- read.csv('diet_data/Andy.csv')
head(andy)
files[3]
# this fails because file is not in this folder
head(read.csv(files[3]))

#prepend dir name with passing full.names=TRUE to list.files
files_full <- list.files('diet_data', full.names=TRUE)
head(read.csv(files_full[3]))
summary(read.csv(files_full[3]))
mode(files_full)
# concatenating all files together
andy_david <- rbind(andy, read.csv(files_full[2]))
str(andy_david)
length(andy$Weight)
head(andy_david)
tail(andy_david)

day_25 <- andy_david[which(andy_david$Day == 25),]
day_25

for (i in 1:5) {print(i)}

dat <- data.frame()
for (i in 1:5) {
    dat <- rbind(dat, read.csv(files_full[i]))
}
str(dat)

# apply median with na stripped away 
median(dat$Weight, na.rm = TRUE)

# median for day 30

dat_30 <- dat[which(dat[, "Day"] == 30),]
dat_30

median(dat_30$Weight)


# Defining a function 
weightmedian <- function(directory, day) {
    files_list <- list.files(directory, full.names = TRUE)
    dat <- data.frame()
    for(i in 1:5) {
        dat <- rbind(dat, read.csv(files_list[i]))
    }
    dat_subset <- dat[which(dat[, "Day"] == day), ]
    median(dat_subset[, "Weight"], na.rm = TRUE)    
}
weightmedian(directory = "diet_data", day = 20)

# reading all files with lapply and concatenating them with rbind and do.call
files_full <- list.files("diet_data", fullnames = TRUE);
complete_set <- lapply(files_full, read.csv)
complete_set
files_full
str(complete_set)


output <- do.call(rbind, complete_set)
output


names(andy)
dim(andy)
str(andy)

summary(andy)

andy[1, "Weight"]
andy[30, "Weight"]

andy[which(andy$Day == 30), "Weight"]

andy_start <- andy[1, "Weight"]
andy_end <- andy[30, "Weight"]

andy_loss <- andy_start - andy_end


