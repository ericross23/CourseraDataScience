pollutantmean <- function(directory, pollutant, id = 1:332){
    setwd(directory)
    fnames <- dir(pattern='.csv')
    selectedData <- data.frame()
    for (i in id){
        selectedData <- rbind(selectedData, read.csv(fnames[i]))
    }
    mean(selectedData[[pollutant]],na.rm=TRUE)
}