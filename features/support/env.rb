require 'sequel'
require 'rspec'
$sqlconnection=Sequel.connect('jdbc:mysql://sql5.freemysqlhosting.net:3306/sql5118938?user=sql5118938&password=JQPF6R7Uh5',
:logger => Logger.new('db.log'))