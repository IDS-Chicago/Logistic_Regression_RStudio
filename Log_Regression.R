#Attach our dataset
attach(titanic_train)

#Generate statistical analysis of all variables
summary(titanic_train_complete)

#Create our logistic model using possibly significant variables
model1 = glm(Survived ~Pclass+Sex+Age+SibSp+Parch+Fare, family = 'binomial',data=titanic_train_complete)

#Summarize logistic regression analysis
summary(model1)



#Find Predicted Probability of Survival For Male In First Class

#regression = intercept estimate- pclass estimate*explanatory variable...
reg1=(5.389-1.242*1-2.635*1) 

#raise equation to e
reg1_odds=exp(reg1) 

#probability relationship
pred_prob=reg1odds/(1+reg1_odds)  

#Display probability male in first class
pred_prob




#Find Predicted Probability For Male In Third Class

#regression = intercept estimate - (pclass estimate*explanatory variable)...
reg2=(5.389-1.242*3-2.635*1) 

#raise equation to e
reg2_odds=exp(reg2) 

#probability relationship
pred_prob2=reg2_odds/(1+reg2_odds)  

#Display probability male in third class
pred_prob2
