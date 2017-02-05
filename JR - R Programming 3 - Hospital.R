


#### 1. Reading and checking ####

#Reading data. Q: Why do we set classes to character?
outcome <- read.csv("outcome-of-care-measures.csv", colClasses = "character")

#Looking
head(outcome)
ncol(outcome)
nrow(outcome)
names(outcome)

outcome[, 11] <- as.numeric(outcome[, 11])
outcome[, 17] <- as.numeric(outcome[, 17])
outcome[, 23] <- as.numeric(outcome[, 23])
hist(outcome[, 11])


#### 2. Data reduction / tidying ####

#Keep only relevant variables
outcome <- outcome[, c(2, 7, 11, 17, 23)]

#Rename variables
names(outcome) <- c("hospital", "state", "heart attack", "heart failure", "pneumonia")



#### 3. Writing neccessary functions ####

## 3.1. best-function ##

best <- function(State, Outcome){
        if(any(State %in% outcome$state) == FALSE){
                print("Input Error! State abbrevation not found")
        }
        else if(any(Outcome %in% names(outcome[2:5])) == FALSE){
                print('Input Error! Available outcomes are: "heart attack", "heart failure" and "pneumonia"')
        }
        else{
                subdata <- subset(outcome, state == State)
                if(Outcome == "heart attack"){
                        subdata <- subdata[,c(1,3)]
                        subdata <- subdata[order(subdata[2], subdata[1], na.last = NA),]
                        print(subdata$hospital[1])
                }
                else if(Outcome == "heart failure"){
                        subdata <- subdata[,c(1,4)]
                        subdata <- subdata[order(subdata[2], subdata[1], na.last = NA),]
                        print(subdata$hospital[1])
                }
                else{
                        subdata <- subdata[,c(1,5)]
                        subdata <- subdata[order(subdata[2], subdata[1], na.last = NA),]
                        print(subdata$hospital[1])
                }
        }
}


best("TX", "heart attack")
best("TX", "heart failure")
best("MD", "heart attack")
best("MD", "pneumonia")

