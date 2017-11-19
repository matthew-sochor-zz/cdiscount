# cdiscount
Code to run cdiscount kaggle competition

This is largely meant to be a proof of concept for [transfer](https://github.com/matthew-sochor/transfer) a transfer learning python package.

## Lets run this

Start by editing the top of the Makefile with your kaggle username and password

### Download dependencies

(assumes you have python 3 installed):

if you are on mac:

`make macDependencies`

if you are on unix:

`make unixDependencies`

### Download data

`make pullTrainData`

and

`make pullCategoryData`

and

`make pullTestData`
