#what percentage of data in a string is NA

missingdata_function <- function(x) {
  length(is.na(x)[is.na(x)==TRUE])/length(x)
}

sample <- c(5,5,5,5,NA)

missingdata_function(sample)
