require 'addressable/uri'
require 'rest-client'

url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/contacts/2'
).to_s

puts RestClient.delete(url, {:contact => {:name => 'Hank', :email => 'Hank@hank.com'}})