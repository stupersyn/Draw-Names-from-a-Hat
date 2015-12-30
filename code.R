setwd("C:\\Users\\public")
#set.seed(88) #Use this if you want the same result
names=c("name1","name2","name3","name4","name5","name6","name7","name8")

pickorder=NULL
hat=names

for(i in 1 : length(names))
{
pick=sample(hat[which(hat!=names[i])],1)  #pick a name from the hat, which is not your own
pickorder=c(pickorder,pick) 

hat= hat[which(hat!=pick)] #remove the name from the hat

}



paired=matrix(c(names, pickorder), nrow=2, byrow=TRUE) #messy data manipulation
row.names(paired)=c("Name","HatName")

for (i in 1 : length(names))
{
j=paste0(names[i],".txt")
write.table(paired[,i], file=j, sep=" ") #write a file for each secret santa

}
