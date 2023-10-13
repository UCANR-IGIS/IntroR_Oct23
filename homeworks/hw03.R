##################################################
## HOMEWORK 3
## Intro to R Part 3: Data Wrangling
##
## Run the commands provided for you.
## Type your answer below each prompt.
##################################################

## SETUP: LOAD SOME DATA FROM THE SAN FRANCISCO OPEN DATA PORTAL

## Load packages
library(dplyr)
library(lubridate)

## Run the following lines of code to import a selection of 311 calls from San Francisco.
## (for more info, see https://data.sfgov.org/resource/vw6y-z8j6)

## First, we define a URL to a CSV
sf311_url <- "https://data.sfgov.org/resource/vw6y-z8j6.csv?$select=service_request_id,requested_datetime,agency_responsible,service_name,service_subtype,address,neighborhoods_sffind_boundaries,source&$limit=50000&$where=requested_datetime between '2023-10-11T00:00:00' and '2023-10-11T23:59:59'"

## Next, read in the data. 
##  - URLencode() converts spaces in the URL to numeric codes 
##  - read.csv() imports the CSV file from SF Open Data
##  - rename() changes the name of one of the columns
##  - ymd_hms() converts a character column into a date-time column
sf311_df <- read.csv(URLencode(sf311_url)) |> 
  rename(neighborhood = neighborhoods_sffind_boundaries) |> 
  mutate(requested_datetime = ymd_hms(requested_datetime))

## If you'd like, un-comment the following line to view the data frame in a View pane:

# View(sf311_df)

#############################################################################
## Q1. How many rows and how many columns does this data frame have?



#############################################################################
## Q02. Write an expression that returns the column names of this data frame.
##      HINT: Look for a function that returns the names of a data frame



#############################################################################
## Q03. Write an expression that returns the data frame sorted by the
##      responsible agency.



#############################################################################
## Q04. Write an expression that just returns three of columns (of your choice).



#############################################################################
## Q05. Write an expression that returns the range of the requested date & time.



#############################################################################
## Q06. Write an expression that just returns 311 calls that were submitted by
## phone.
 


#############################################################################
## Q07. How many 311 calls were submitted by phone?



#############################################################################
## Q08. Write an expression the returns complaints about barking dogs made by phone.


#############################################################################
## Q09. Write an expression that returns the number of calls per neighborhood,
## sorted alphabetically by neighborhood.



#############################################################################
## Q10. Write an expression that returns the number of calls per neighborhood,
## sorted by the number of calls.



#############################################################################
## Q11. What is the most common service requested?



#############################################################################
## Q12. What is the least common service requested?



