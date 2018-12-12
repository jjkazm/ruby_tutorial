require 'sinatra'
require 'date'



get '/' do

  today = Date::DAYNAMES[Time.now.wday]
  "Hello world, have a good #{today}"
end
