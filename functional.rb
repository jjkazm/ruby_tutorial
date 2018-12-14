states = ["Kansas", "Nebraska", "North Dakota", "South Dakota"]

# def imperative_singles(arr)
#   singles = []
#   arr.each do |state|
#     # if state.split.length == 1
#     #   singles << state
#     # end
#     singles << state if state.split.length == 1
#   end
#   singles
# end
#
# def functional_singles(arr)
#   arr.select{ |state| state.split.length == 1 }
# end
#
# puts "imperative: " + imperative_singles(states).inspect
#
# puts "functional: " + functional_singles(states).inspect
#
# def include_dakota(arr)
#   arr.select{|state| state.downcase.include?("dakota")}
# end
#
# puts "include_dakota: " + include_dakota(states).inspect
#
#
# def regex_dakota(arr)
#   arr.select { |state| state.downcase.match?(/\w+\s\w+/)}
# end
#
# puts "regex_dakota: " + regex_dakota(states).inspect
# numbers = [1,2,3]
# def imperative_sum(arr)
#   total = 0
#   arr.each do |num|
#     total += num
#   end
#   total
# end
# puts "imperative_sum: "+ imperative_sum(numbers).inspect
#
# def functional_sum(arr)
#   arr.reduce{|total, num| total += num}
# end
#
# puts "functional_sum: " + functional_sum(numbers).inspect
#
#
#
# def imperative_lengths(states)
#   lengths = {}
#   states.each do |state|
#     lengths[state] = state.length
#   end
#   lengths
# end
#
# puts "imperative_lengths: " + imperative_lengths(states).inspect
#
# def functional_lengths(states)
#   states.reduce({})do |lengths, state|
#     lengths[state] = state.length
#     lengths
#   end
# end

# def functional_lengths_map(states)
#   lengths = {}
#   states.map do |state|
#     lengths[state] = state.length
#   end
#   lengths
# end


# puts "functional_lengths: " +  functional_lengths(states).inspect

def urlify(state)
  "www.google.pl/"+state.downcase.split.join("-")
end

def functional_urls(states)
  states.collect{ |state| urlify(state) }
end

puts "functional_urls: " + functional_urls(states).inspect

def functional_singles(states)
  states.reject{|state| state.split().length >1}
end

puts "functional_singles: " + functional_singles(states).inspect

def functional_sum(arr)
  arr.inject{ |total, num| total+= num }
end

puts "functional_sum: " + functional_sum([1,2,3]).inspect

def functional_lengths(states)
  states.inject({}) do |lengths, state|
    lengths[state] = state.length
    lengths
  end
end

puts "functional_lengths: " + functional_lengths(states).inspect
