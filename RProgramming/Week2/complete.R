complete <- function(directory, id = 1:332){
    setwd(directory)
    fnames <- dir(pattern='.csv')
    complete_df <- data.frame(matrix(ncol=2,nrow=length(id)))
    colnames(complete_df) <- c('id','nobs')
    for (i in seq_along(id)){
        data <- read.csv(fnames[id[i]])
        complete_df$id[i] <- id[i]
        complete_df$nobs[i] <- nrow(data[complete.cases(data),])
    }
    complete_df
}