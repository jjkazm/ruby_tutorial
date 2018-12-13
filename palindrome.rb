# Returns true for palindrome or state otherwise
def palindrome?(word)
  word.downcase!
  word == word.reverse
end
