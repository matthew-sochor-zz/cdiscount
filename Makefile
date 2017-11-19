unixDependencies:
	pip install transfer
	pip install pymongo
	sudo apt-get install p7zip

macDependencies:
	pip install transfer
	pip install pymongo
	sudo apt-get install p7zip

pullTrainData:
	wget https://www.kaggle.com/c/cdiscount-image-classification-challenge/download/train.bson
	wget https://www.kaggle.com/c/cdiscount-image-classification-challenge/download/category_names.7z
	7za x category_names.7z

pullTestData:
	wget https://www.kaggle.com/c/cdiscount-image-classification-challenge/download/test.bson
