mydata<-read.csv("C:/Users/Admin/OneDrive/Documents/SQL Server Management Studio 22/previousoutcome relation to subscription rate.csv")
View(mydata)

#creating a dataframe
df<-data.frame(
  poutcome=rep(mydata$poutcome,times=2),
  y       =rep(c("NotSubscribed","Subscribed"),each=nrow(mydata)),
  Freq    =c(mydata$NotSubscribed,mydata$Subscribed)
)
print(df)

df$poutcome<- as.factor(df$poutcome)
print(df$poutcome)
df$y<-as.factor(df$y)
print(df$y)

#log-linear regression model
sub.model<-glm(df$Freq~df$y+df$poutcome, family = poisson(link="log"))
sub.model

sub.model2<-glm(df$Freq~df$y*df$poutcome, family = poisson(link="log"))
sub.model2
anova(sub.model,sub.model2,test = "Chisq")
