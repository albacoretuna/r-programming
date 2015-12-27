installed.packages("XML")
require(XML)
data <- xmlParse("turs.xml")

indata <- xmlToDataFrame(data)
indata

names(indata)

head(indata)


