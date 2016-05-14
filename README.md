# redboxkiosk
Ruby Cucumber test for redbox 

This is test suite used to test functionalities of a redbox kiosk. Suite is written in Ruby cucumber framework and make use of rpsec and sequel gem 
for testing the results. The actual job for this project will be a web application or ETL, but in the suite I have created a folder called
Jobs and few classes inside it which will simulate the actual code.

Ruby cucumber framework allows you to write your business test cases in Gherkin format (Given , When, Then) in plain English, which can
be ran by end business users for their approvals.

Here are the business scenarios 

Scenario: Movies available and user can rent a movie
Given movies are available

When user rent the movie

Then transaction is successful

And movie count in kiosk reduce by one

And movie count with user go up by one

Scenario: Movies not avaialble and user try to rent
Given movies are not available

When user rent the movie

Then transaction is failed

To check how this is done goto http://etlcode.com/index.php/tutorial/rubycucumber/Database-Testing


