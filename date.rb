require 'sinatra'
require 'date'


def day_of_the_week(day)
  Date::DAYNAMES[day.wday]
end

def greetings(day)
    "Hello world, have a good #{day_of_the_week(day)} - with extracted greetings function"
end
