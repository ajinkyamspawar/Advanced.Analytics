import pandas as pd
import numpy as np
from sklearn.linear_model import LinearRegression
from sklearn.metrics import r2_score

pizza=pd.read_csv("pizza.csv")

lr=LinearRegression()


x=pizza[['Promote']]
y=pizza['Sales']

lr.fit(x,y)
print(lr.intercept_)
print(lr.coef_)

#yi^
y_pred=lr.predict(x)
print(r2_score(y,y_pred))


#numerator=np.sum(y-y_pred**2)
#denominator =np.sum(y-y.mean())**2)
#1-(numerator/denominator)


#########Insure_auto##############

insure=pd.read_csv("Insure_auto.csv")

lr=LinearRegression()


#1.1
x=insure[['Operating_Cost']]
y=insure['Home']
lr.fit(x,y)
print(lr.intercept_)
print(lr.coef_)
y_pred=lr.predict(x)
print(r2_score(y,y_pred))

#1.2
x=insure[['Automobile']]
y=insure['Operating_Cost']
lr.fit(x,y)
print(lr.intercept_)
print(lr.coef_)
y_pred=lr.predict(x)
print(r2_score(y,y_pred))

#1.3
x=insure[['Home','Automobile']]
y=insure['Operating_Cost']
lr.fit(x,y)
print(lr.intercept_)
print(lr.coef_)
y_pred=lr.predict(x)
print(r2_score(y,y_pred))


#################Boston###########

boston=pd.read_csv("boston.csv")

lr=LinearRegression()

x=boston.drop('medv',axis=1)
y=boston["medv"]
lr.fit(x,y)
print(lr.intercept_)
print(lr.coef_)
y_pred=lr.predict(x)
print(r2_score(y,y_pred))

























