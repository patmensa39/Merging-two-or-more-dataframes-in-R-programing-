#MERGING TWO OR MORE DATAFRAMES IN R
#First data 
lifeforms<- read.table("lifeforms.txt" , header = TRUE)
View(lifeforms)

#Second data 
flowering<- read.table("fltimes.txt", header = TRUE)
View(flowering)

#Merging the two datasets 
merge(flowering, lifeforms)


#Merging both with NA values 
both<-merge(flowering, lifeforms, all = T)

View(both)

seeds <- read.table("seedwts.txt", header = TRUE)

View(seeds)


merge(both, seeds, by.x = c("Genus" , "species"), by.y = c("name1", "name2"))
