corr <- function(directory, threshold = 0){
    setwd(directory)
    fnames <- dir(pattern='.csv')
    id = 1:332
    comp_table <- complete(directory)
    ans <- numeric()
    for (i in seq_along(id)){
        if (comp_table$nobs[i] > threshold){
            data <- read.csv(fnames[id[i]])
            data <- data[complete.cases(data),]
            ans <- c(ans,cor(data$nitrate,data$sulfate))
        }
    }
    ans
}