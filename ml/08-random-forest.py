from matplotlib import pyplot as plt import numpy as np
from sklearn.datasets import load_iris
from sklearn.model_selection import train_test_split from sklearn.model_selection import KFold
data = load_iris() features = data.data
feature_names = data.feature_names feature_names = data.feature_names target = data.target
target_names = data.target_names labels = target_names[target]
from sklearn.ensemble import RandomForestClassifier classifier = RandomForestClassifier(n_estimators=100) kf = KFold(n_splits=5, shuffle=True)
X=features y=target
X_train, X_test, y_train, y_test = train_test_split( X, y, test_size=0.33, random_state=42) classifier.fit(X_train, y_train) print(classifier.score(X_test, y_test))