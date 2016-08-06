#Write a function named 'pollutantmean' that calculates the mean of a pollutant (sulfate or nitrate)
#across a specified list of monitors. The function 'pollutantmean' takes three arguments: 'directory',
#'pollutant', and 'id'. Given a vector monitor ID numbers, 'pollutantmean' reads that monitors'
#'particulate matter data from the directory specified in the 'directory' argument and returns the
#mean of the pollutant across all of the monitors, ignoring any missing values coded as NA.

#Assignment: Air-pollution
#Objective: write a function that calculates mean from values stored in separate .csv-files.
#Input: .csv-files in dir "specdata"
#Output: Mean-value

setwd("C:/Users/Jonas/Documents/R/R-programming")
dir() #is the directory "specdata" present in current dir?

pollutantmean<-function(directory, pollutant, id){
        
}