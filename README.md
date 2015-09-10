# Fyber-challenge

## Frontend
For templates I've taken the bootstrap v4 - it's fast option to make simple and nice user interface

## Backend
Some things can be done better but there is time limitation.
For example for results from API can be implemented Presenter for response data (the code will be more organised).

Also for response in test from API can be use VCR - https://github.com/vcr/vcr
In this case we will have all http communication in the file and also we will have exact response with all data.
Then it's not need to stub http client and faraday.
