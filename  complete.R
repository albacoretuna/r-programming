complete <- function(directory, id = 1:332) {


    files_full <- list.files(directory, full.names = TRUE)
    dat <- data.frame()
    
    for (i in id) {
        curr <- read.csv(files_full[i])
        nobs <- sum(complete.cases(curr))
        tmp <- data.frame(i, nobs)
        inf <- rbind(inf, tmp)
    }
    
    colnames(inf) <- c("id", "nobs")
    dat
}

