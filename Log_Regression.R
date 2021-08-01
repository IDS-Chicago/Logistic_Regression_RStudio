#Attach our dataset
attach(titanic_train)

#Generate statistical analysis of all variables
#Key obsvs - median age 28, 
summary(titanic_train)

#Create our logistic model using possibly significant variables
model1 = glm(Survived ~Pclass+Sex+Age+SibSp+Parch+Fare, family = 'binomial',data=titanic_train)

#Summarize logistic regression analysis
summary(model1)


