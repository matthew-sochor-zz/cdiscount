kaggle_user = matthewsochor
kaggle_password = 12345
data = data


unixDependencies:
	pip install transfer
	pip install pymongo
	pip install kaggle-cli
	sudo apt-get install p7zip

macDependencies:
	pip install transfer
	pip install pymongo
	pip install kaggle-cli
	sudo apt-get install p7zip

pullTrainData:
	kg download -c cdiscount-image-classification-challenge -u $(kaggle_user) -p $(kaggle_password) -f train.bson

pullTestData:
	kg download -c cdiscount-image-classification-challenge -u $(kaggle_user) -p $(kaggle_password) -f test.bson

pullCategoryData:
	kg download -c cdiscount-image-classification-challenge -u $(kaggle_user) -p $(kaggle_password) -f category_names.7z
	7za x category_names.7z

sortData: category_names.csv train.bson
	python organize.py category_names.csv $(data) train.bson
