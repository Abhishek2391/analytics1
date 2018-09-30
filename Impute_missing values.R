install.packages("gsheet")

x=c(NA,1,NA,2)
is.na(x)
mean(x,na.rm=T)
sum(is.na(x))
#if encounter NA, replace with the mean
x[is.na(x)]=mean(x,na.rm=T)
x

x2=rnorm(100000,mean=50,sd=5)
length(x2)
#sample picks up sample values
pos=sample(100000,size=30)
#replace missing values in random location within the range
x2[pos]=NA
sum(is.na(x2))

library(VIM)
head(sleep)
#remove rows with NA in a data frame
complete.cases(sleep)
sleep[complete.cases(sleep),]
sleep[!complete.cases(sleep),]
#number of missing values row wise and column wise
colSums(is.na(sleep))
rowSums(is.na(sleep))
