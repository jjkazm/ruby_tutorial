# def sandwich
#   puts "top bread"
#   yield
#   puts "bottom bread"
# end
#
# sandwich do
#   puts "ham, cheese and lettuce"
# end
#
#


def tag(tagname, text)
  html = "<#{tagname}>#{text}</#{tagname}>"
  yield html
end

tag("p", "Life is life") do |markup|
  puts markup
end
