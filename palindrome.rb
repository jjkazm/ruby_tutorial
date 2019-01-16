# Defines Phrase class
# class Phrase < String
  # attr_accessor :content

  # def initialize(argument)
  #   @content = argument
  # end


# class String
#
#   def processor(string)
#     string.downcase
#   end
#
#   # Returns true for palindrome or state otherwise
#   def palindrome?
#     word_processed == word_processed.reverse
#   end
#
#   # Returns the phrase LOUDER
#   def louder
#     upcase
#   end
#
#   def blank2?
#     !match(/\S/)
#   end
#
#   private
#
#     def word_processed
#       processor(self)
#     end
#
# end


# class TranslatedPhrase < Phrase
#   attr_accessor :translation
#
#   def initialize(content, other_lang)
#     super(content)
#     @translation = other_lang
#   end
#
#   def word_processed
#     processor(self.translation)
#   end
#
# end

module Palindrome

  def processed
    self.to_s.downcase
  end

  def palindrome?
    processed == processed.reverse
  end

end
