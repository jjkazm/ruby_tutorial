require 'sinatra'
require './date'

get '/' do
  greetings(Time.now)
end
