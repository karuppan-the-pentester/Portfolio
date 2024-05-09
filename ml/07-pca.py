import numpy as np
import matplotlib.pyplot as plt import pandas as pd
# importing or loading the dataset dataset = pd.read_csv('wine.csv')
# distributing the dataset into two components X and Y X=dataset.iloc[:, 1:13].values
y =dataset.iloc[:, 0].values
# Splitting the X and Y into the # Training set and Testing set
from sklearn.model_selection import train_test_split
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size = 0.2, random_state = 0)
# performing preprocessing part
from sklearn.preprocessing import StandardScaler
sc = StandardScaler()
X_train = sc.fit_transform(X_train) X_test = sc.transform(X_test)
from sklearn.decomposition import PCA
from sklearn.linear_model import LogisticRegression
pca = PCA(n_components = 2)
X1_train=pca.fit_transform(X_train) X1_test=pca.transform(X_test) print(X.shape)
print(X1_train.shape)
variance=pca.explained_variance_ratio_
classifier=LogisticRegression(random_state = 0)
classifier.fit(X1_train, y_train)
y_pred = classifier.predict(X1_test) print(classifier.score(X1_test, y_test)) classifier.fit(X_train, y_train)
y1_pred = classifier.predict(X_test)
print(classifier.score(X_test,y_test)) print(np.shape(X_train)) print(np.shape(X1_train)) plt.figure(figsize=(8,6))
plt.scatter(X1_train[:,0],X1_train[:,1],s=10,c=y_train,cmap='rainbow') plt.xlabel('First principal component')
plt.ylabel('Second Principal Component')
from sklearn.metrics import confusion_matrix
cm =confusion_matrix(y_test, y_pred)