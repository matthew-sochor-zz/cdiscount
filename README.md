# Kaggle + transfer

Code to install transfer and pull data for a kaggle competition

## Install

This will install kaggle cli and transfer

`make dependencies`

(Note: you need to install tensorflow yourself, your mother doesn't live here)

## Pull data

Edit the makefile with your kaggle username and password.  Feel free to edit the competition for the one you want to try and even the data name.

To just run with the values in the Makefile:

`make pullData`

to override some variables

`make pullData file=test.zip`
