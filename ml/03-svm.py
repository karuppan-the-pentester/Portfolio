from sklearn import datasets
from sklearn.model_selection import train_test_split iris = datasets.load_iris()
X = iris.data # we only take the first two features. y = iris.target from sklearn.svm import SVC
model = SVC(kernel='linear', C=1E10)
X_train, X_test, y_train, y_test = train_test_split( X, y, test_size=0.33, random_state=42) model.fit(X_train, y_train) print(model.score(X_test, y_test)
pred = model.predict(X_test) print(confusion_matrix(y_test,pred)) print(classification_report(y_test,pred))