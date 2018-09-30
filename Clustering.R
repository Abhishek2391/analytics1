#Clustering
set.seed(222)
subject1=trunc(rnorm(30,mean=60,sd=15))
range(subject1)
subject1
#create 2 clusters
#numerical values for clustering is used : kmeans
marks=data.frame(subject1)
head(marks)
#Creating 2 clusters
#Eculedian distance: 
k2=kmeans(marks,centers=2)
k2
#marks for each cluster has been calculated
#utlimate aim is to reduce total between ss

k2$size#tells how many has gone in each cluster
marks1<-marks[k2$cluster==1,]#marks in cluster 1
marks2<-marks[k2$cluster==2,]#marks in cluster 2
length(marks[k2$cluster==2,])
k2$centers
mean(marks1)
mean(marks2)

#use clustering for clustering age, salary
#Selecting the number of clusters. We shall get to know the optimum number of clusters needed
#decides number of clusters possible when using kmeans algorithm
install.packages("NbClust")
library(NbClust)
install.packages("arules")
install.packages("arulesViz")
install.packages("VIM")
install.packages("amap")
