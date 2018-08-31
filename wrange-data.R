install.packages("tidyverse", dependencies=TRUE)
install.packages("DBI", dependencies=TRUE)
install.packages("stringi", dependencies=TRUE)

library(tidyverse)
murders <- read_csv("data/murders2.csv")
murders <- murders %>% mutate(region=factor(region), rate = total/population* 10^5 )

dropcol <- c("X6")
murders <- murders %>% select( state,abb,region,population, total,rate)
murders
save(murders,file="rda/murders.rda")
