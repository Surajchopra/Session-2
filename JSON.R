library(rjson)                        # load package rjson
json1 <- fromJSON("text1.json")       # import the first file as text1
json2 <- fromJSON("text2.json")       # import the first file as text2
json3 <- fromJSON("text3.json")       # import the first file as text3

# print all the JSON files.
print(json1)
print(json2)
print(json3)

# convert the JSON into data frame. 
json_data <- data.frame(json1, json2, json3)
json_data

2. #2. Parse the following JSON into a data frame
js<-'{ "name": null, "release_date_local": null, "title": "3 (2011)", 
# "opening_weekend_take": 1234, "year": 2011, "release_date_wide": "2011-09-16", "gross": 59954 }'

library(RJSONIO)
require(RJSONIO)
js <- '{ "name": null, "release_date_local": null, "title": "3 (2011)", 
+ "opening_weekend_take": 1234, "year": 2011, "release_date_wide": "2011-09-16", "gross": 59954 }'

js <- fromJSON(js)
js

# use do.call function to convert the JSON into data frame. 

do.call("cbind", js)

3. # 3. Write a script for variable binning using R.

x <- c(4,7,9,1,10,15,18,109,3,160,100,16,120,22,2,23,16,17)
binned.x <- as.factor(ifelse(x>50, "10+",x))
binned.x


