from IPython import get_ipython get_ipython().magic('reset-sf') import numpy as np
import matplotlib.pyplot as plt import pandas as pd
dataset = pd.read_csv('Position_Salaries.csv')
X=dataset.iloc[:,1:2].values y =dataset.iloc[:, 2].values
from sklearn.tree import DecisionTreeRegressor regressor = DecisionTreeRegressor(random_state=0) regressor.fit(X,y)
n=np.array([6.5]).reshape(1, 1) y_pred = regressor.predict(n) plt.scatter(X, y, color = 'red')
plt.plot(X, regressor.predict(X), color = 'blue') plt.title('Regression Model') plt.xlabel('Position level')
plt.ylabel('Salary') plt.show()
X_grid=np.arange(min(X),max(X), 0.01) X_grid=X_grid.reshape((len(X_grid),1)) plt.scatter(X, y, color = 'red')
plt.plot(X_grid, regressor.predict(X_grid), color = 'blue') plt.title('Example of Decision Regression Model') plt.xlabel('Position level')
plt.ylabel('Salary')
plt.show()
print(y_pred)