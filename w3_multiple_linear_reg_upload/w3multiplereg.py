import pandas
from sklearn import linear_model
#From the sklearn module we will use the LinearRegression()
#method to create a linear regression object.


df = pandas.read_csv("cars.csv")

#make a list of the independent values and call this variable X.
#Put the dependent values in a variable called y
X = df[['Weight', 'Volume']] #select col weight/volume value around 1000
y = df['CO2'] #select col CO2 value around 100

regr = linear_model.LinearRegression()
regr.fit(X, y)
#object has a method called fit() that takes the independent and dependent values
#as parameters and fills the regression object with data 


#predict the CO2 emission of a car where the weight is 2300kg, and the volume is 1300cm3:
predictedCO2 = regr.predict([[2300, 1300]])

print(predictedCO2)

#coefficient
print(regr.coef_)
#[0.00755095 0.00780526]
#Weight: 0.00755095
#Volume: 0.00780526
