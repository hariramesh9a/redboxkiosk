require 'models/tables'
require 'jobs/red_box'

Given(/^Kiosk has movies available$/) do
  #Very fragile test case - A true given statement arranges data for testing.
  #Ideal way is to remove data from source tables and insert back based on your test scenarios.
  $sqlconnection.execute("update movies set stock=100")
  $sqlconnection.execute("update user set item_count=0")
end

When(/^Customer selects a movie to withdraw$/) do
  myredbox=RedBox.new #instance of redbox job
  myredbox.movie_name ="Inception" #Attribute accessor
  myredbox.user_name ="Divya" #Attribute accessor
  @message=myredbox.rent_movie #Declare a class variable to capture message from the method
end

Then(/^Kiosk should successfully let the user Rent the movie$/) do
  expect(@message).to eq("Success")
end

And(/^Kiosks move qty should be rreduced by one$/) do
  result=TablesDB::Movies.where(:name => "Inception")
  result.each do |row|
    expect(row[:stock]).to be(99)
  end

end

And(/^Users movie qty should be increased by one$/) do
  result=TablesDB::User.where(:user_name => "Divya")
  result.each do |row|
    expect(row[:item_count]).to be(1)
  end

end