kaggle_user ?= matthewsochor
kaggle_password ?= 12345
challenge ?= plant-seedlings-classification
file ?= train.zip

dependencies:
	pip install transfer
	pip install kaggle-cli

pullData:
	kg download -c $(challenge) -u $(kaggle_user) -p $(kaggle_password) -f $(file)

