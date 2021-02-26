eggs <- read.csv("C:/Users/hjp4906/Desktop/Exam1/eggs_CUFES.csv")
eggs <- na.omit(eggs)

library(stringr)
years <- str_sub(eggs$cruise, start=1, end =4)
eggs$year <- years
eggs2 <- eggs[,c("cruise", "lat_degN", "lon_degE", "anchovy_eggs_count", "sardine_eggs_count")]

write.csv(eggs2, file = 'eggs.csv', row.names=F)
