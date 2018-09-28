women
#git config --global user.email "pgp17abhishekbanerjee@imt.ac.in"
#git config --global user.name "Abhishek2391"


#Regression Analysis

data(women)
women
names(women)
str(women)

#covariance
cov(women$height,women$weight)

#correlation
cor(women$height,women$weight)

plot(x=women$height, y=women$weight,type = 'b')

#abline is a line of best fit , passed through center of all the points, used for prediction
abline(lm(weight~height,data=women),col='red')

fit1=lm(weight~height,data=women)#creating a model

summary(fit1)# summmary of the model

#weight is dependent variable
#height is the independent variable
#interpretation of model

#Multiple R square,Adjusted R square. We need to interpret the p value.

#F-stattistic: p-value:1.091e-14, which is less than 0.05, which makes it significant, therefore there is a modeal between y and atleast 1 x variable. Yes , height and weight have a linear relationship and they rise in a linear fashion,

#Multiple R square: 0.991. Therefore, 99% variation in Y is explained by X.
#adjusted R square, is not used in addition of variables. Used in only cases of multiple linear regression.

#Residual standard error:

#P value is not calculated in case of manual calculation. used while using a software.

#Coefficeints: y=mx+c, C is -87 here

#Pr vlue: if p value is less than 0.05, this value is significant making height significant for prediction of weight. *** to denote significance. if value is close to 0 three stars and so on. Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1. height is significant . 

#residuals: difference between predicted and actual values. Here its for weights. the range lies from -1.73 to 3.1167.
#Multiple R square is 0.99 mkes its a good model for predicting weight using height.

#Ho(F Test): No relationship between Y and any X
#Ha:

#we shall reject Null hypothesis

coef(fit1)
attributes(fit1)
# cannot predict for height not present in dataset. Extrapolation is not possible. You can take a value and calculate a feasible number but it is not statistically accurate.
#Y=-87+3.4*X
range(women$height)
#intrapolation is pssible only for height within 58 to 72

#R Square

#Prediction model
new1=data.frame(height=c(65,66))
new1
#predicting using the model fit1
(p1=predict(fit1,newdata = new1))
cbind(new1,p1)
(new2=data.frame(height=c(60,69)))
(p2=predict(fit1,newdata=new2))
cbind(new2,p2)

#Source: R in Action: Pg.174
#Assumptions:

#Normality: for a fixed value of independent variable, the dependent variable is normally distributed. 
#Independence:There is no auto colinearity. It is a cross sectional data. It is not a time series data. 
#Linearity: Each y has a linear relation with each C. 
#Homoscedasticity: Variance doesnt change with different levels of X.
#Autocolinearity: 1 y is dependent on the other .
#Multicolinearity: 1 x is depedent on the other. 
#Darwin Watson Test to test for autocolinearity.
#There should not be any outliers.

plot(fit1)





