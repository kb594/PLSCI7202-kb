#what percentage of data in a string is NA

missingdata_function <- function(x) {
  length(is.na(x)[is.na(x)==TRUE])/length(x)
}

sample <- c(5,5,5,5,NA)

missingdata_function(sample)

#creating a new function to apply the above function to an entire dataframe

#changing the previously used sample to have two columns
sample2 <- cbind(sample,sample)

missing_dataframe <- function(x) {
  sapply(as.data.frame(x),missingdata_function)
}

#testing the new function
missing_dataframe(sample2)
