#########################################################################
##
## Programmer: Michael Kamerman
## Project Name: PDNJ Capstone Project
## Department / Project Team: Data Analyst Fellowship
## Project Manager: Aissa Heath
## Creation Data: 7/29/2021
## Modified Data: 8/9/2021
## Summary: This projects purpose is to help progressive candidates 
##          seek out the most important people and the most important
##          issues people in New Jersey face.
########################################################################




## Reading in the Education data set

Education<- read.csv("Education data.csv", header = TRUE)

head(Education)

## Checking the data type of each column in the Education data set

str(Education)

## Checking if there is any missing values 

is.na(Education)

## Rename the first column to Name for name of each race

names(Education)[1]<- 'Name'

## Rename the third column to High School with an underscore between High and School

names(Education)[3]<- 'High_School'

## Deleted the total column of the data set

Education$total<- NULL

head(Education)

## write and save the possessed data file without the index column

write.csv(Education, "Prossessed Education data.csv", row.names = FALSE)

## Read in new file

PrEducation<- read.csv("Prossessed Education data.csv", header=TRUE)

head(PrEducation)

## Read in data on poverty by race

PoRace<- read.csv("csvData.csv", header = TRUE)

head(PoRace)

## Checking the data type of each column 

str(PoRace)

## Checking if there is any missing values 

is.na(PoRace)

## Rename the first column to Name for name of each race

names(PoRace)[1]<- 'Name'

## Capitalize Poverty and Rate columns

names(PoRace)[3]<- 'Poverty'

names(PoRace)[4]<- 'Rate'

## Deleted the total column of the data set

PoRace$total<- NULL

head(PoRace)

## Use the package formattable to change the format of the column rate

library(formattable) 

## Use the percent function to change the Rate column from decimal to percent values

PoRace$Rate<- percent(PoRace$Rate)

head(PoRace)

## Checking the data type of each column after change in the rate column

str(PoRace)

## write and save the possessed data file without the index column

write.csv(PoRace, "PovertybyRace.csv", row.names = FALSE)

## Read in new file

PoRace2<- read.csv("PovertybyRace.csv", header = TRUE)

head(PoRace2)

## Read in data set for Race and Ethnicity in New Jersey

RE<- read.csv("Race and Ethnicity.csv", header = TRUE)

head(RE)

## Deleted the columns of the data set that has no meaning to the data

RE$ID.Race<- NULL

RE$ID.Ethnicity<- NULL

RE$ID.Year<- NULL

RE$ID.Geography<- NULL

RE$Slug.Geography<- NULL

head(RE)

## Checked the data types in each column

str(RE)

## Checked if there were any missing values in the data set

is.na(RE)

## Rename the fourth column with an underscore in the middle of each word

names(RE)[4]<- "Hispanic_Population_MOE"

## Capitalize the Share column

names(RE)[7]<- "Share"

## Change Geography column name to State

names(RE)[5]<- "State"

## Use the package formattable to change the format of the column Share 

library(formattable)

## Use the percent function to change the Share column from decimal to percent values

RE$Share<- percent(RE$Share)

head(RE)

## Checked the data types in each column after transformation of the Share column

str(RE)

## write and save the possessed data file without the index column

write.csv(RE, "Prossessed Race and Ethnicity.csv", row.names = FALSE)

## Read in new file

PRE<- read.csv("Prossessed Race and Ethnicity.csv", header = TRUE)

head(PRE)

## Read in data on Income in New Jersey by location and Race

Inc<- read.csv("Income by Location.csv", header = TRUE)

head(Inc)

## Deleted the columns of the data set that has no meaning to the data

Inc$ID.Race<- NULL

Inc$ID.Year<- NULL

Inc$ID.Geography<- NULL

Inc$Slug.Geography<- NULL

head(Inc)

## Checked the data types in each column

str(Inc)

## Checked if there were any missing values in the data set

is.na(Inc)

## Rename the third column with underscores in the middle of each word 

names(Inc)[3]<- "Household_Income_by_Race"

## Rename the fourth column with underscores in the middle of each word 

names(Inc)[4]<- "Household_Income_by_Race_MOE"

head(Inc)

## write and save the possessed data file without the index column

write.csv(Inc, "New Jersey's household Income.csv", row.names = FALSE)

## Read in new file

NJHI<- read.csv("New Jersey's household Income.csv", header = TRUE)

head(NJHI)

## Used this to reduced the numbers in NSA_Employees_Growth to only 3 digits

options(digits = 3)

## Read in data set for Race and Ethnicity in New Jersey

EIS<- read.csv("Employment by Industry Sector.csv", header = TRUE)

head(EIS)

## Deleted the columns of the data set that has no meaning to the data

EIS$Month.of.Year.ID<- NULL

EIS$Supersector.ID<- NULL

EIS$Month.of.Year<- NULL

head(EIS)

## Checked the data types in each column

str(EIS)

## Checked if there were any missing values in the data set

is.na(EIS)

## Rename the second column with an underscore in the middle of each word

names(EIS)[2]<- "NSA_Employees"

## Rename the fourth column with an underscore in the middle of each word

names(EIS)[4]<- "NSA_Employees_Growth"

head(EIS)

## write and save the possessed data file without the index column

write.csv(EIS, "New Jersey Employment levels by Industry.csv", row.names = FALSE)

## Read in new file

NJEI<- read.csv("New Jersey Employment levels by Industry.csv", header = TRUE)

head(NJEI)

## Read in data set for Race and Ethnicity in Essex County, New Jersey

REEC<- read.csv("Race and Ethnicity Essex County.csv", header = TRUE)

head(REEC)

## Deleted the columns of the data set that has no meaning to the data

REEC$ID.Race<- NULL

REEC$ID.Ethnicity<- NULL

REEC$ID.Year<- NULL

REEC$ID.Geography<- NULL

REEC$Slug.Geography<- NULL

head(REEC)

## Checked the data types in each column

str(REEC)

## Checked if there were any missing values in the data set

is.na(REEC)

## Rename the fourth column with an underscore in the middle of each word

names(REEC)[4]<- "Hispanic_Population_MOE"

## Capitalize the Share column

names(REEC)[7]<- "Share"

## Use the package formattable to change the format of the column Share 

library(formattable)

## Use the percent function to change the Share column from decimal to percent values

REEC$Share<- percent(REEC$Share)

head(REEC)

## Checked the data types in each column after transformation of the Share column

str(REEC)

## write and save the possessed data file without the index column

write.csv(REEC, "Prossessed Race and Ethnicity Essex County.csv", row.names = FALSE)

## Read in new file

PREEC<- read.csv("Prossessed Race and Ethnicity Essex County.csv", header = TRUE)

head(PREEC)

## Read in data set for Race and Ethnicity in Union County, New Jersey

REUC<- read.csv("Race and Ethnicity Union County.csv", header = TRUE)

head(REUC)

## Deleted the columns of the data set that has no meaning to the data

REUC$ID.Race<- NULL

REUC$ID.Ethnicity<- NULL

REUC$ID.Year<- NULL

REUC$ID.Geography<- NULL

REUC$Slug.Geography<- NULL

head(REUC)

## Checked the data types in each column

str(REUC)

## Checked if there were any missing values in the data set

is.na(REUC)

## Rename the fourth column with an underscore in the middle of each word

names(REUC)[4]<- "Hispanic_Population_MOE"

## Capitalize the Share column

names(REUC)[7]<- "Share"

## Use the package formattable to change the format of the column Share 

library(formattable)

## Use the percent function to change the Share column from decimal to percent values

REUC$Share<- percent(REUC$Share)

head(REUC)

## Checked the data types in each column after transformation of the Share column

str(REUC)

## write and save the possessed data file without the index column

write.csv(REUC, "Prossessed Race and Ethnicity Union County.csv", row.names = FALSE)

## Read in new file

PREUC<- read.csv("Prossessed Race and Ethnicity Union County.csv", header = TRUE)

head(PREUC)

## Read in data set for Race and Ethnicity in Union County, New Jersey

REMC<- read.csv("Race and Ethnicity Middlesex County.csv", header = TRUE)

head(REMC)

## Deleted the columns of the data set that has no meaning to the data

REMC$ID.Race<- NULL

REMC$ID.Ethnicity<- NULL

REMC$ID.Year<- NULL

REMC$ID.Geography<- NULL

REMC$Slug.Geography<- NULL

head(REMC)

## Checked the data types in each column

str(REMC)

## Checked if there were any missing values in the data set

is.na(REMC)

## Rename the fourth column with an underscore in the middle of each word

names(REMC)[4]<- "Hispanic_Population_MOE"

## Capitalize the Share column

names(REMC)[7]<- "Share"

## Use the package formattable to change the format of the column Share 

library(formattable)

## Use the percent function to change the Share column from decimal to percent values

REMC$Share<- percent(REMC$Share)

head(REMC)

## Checked the data types in each column after transformation of the Share column

str(REMC)

## write and save the possessed data file without the index column

write.csv(REMC, "Prossessed Race and Ethnicity Middlesex County.csv", row.names = FALSE)

## Read in new file

PREMC<- read.csv("Prossessed Race and Ethnicity Middlesex County.csv", header = TRUE)

head(PREMC)


