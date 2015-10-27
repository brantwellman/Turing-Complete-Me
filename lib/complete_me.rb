require 'pry'
require './lib/node'

class CompleteMe
  attr_reader :letter_links

  def initialize
    @letter_links = {}
  end

  def add_first_letter_to_letter_links(word)
    @letter_links[word[0]] = CompleteMe.new
  end

  def insert(word)
    until word.size == 0 do
      if @letter_links.has_key?(word[0]) == false
        add_first_letter_to_letter_links(word)
        # binding.pry
      else
        # binding.pry
        letter_key = word.slice!(0)
        # binding.pry
        @letter_links[letter_key].insert(word)
      end
    end
    # if letter_links has the key,
    #   strip the first letter from the word str[1..-1]
    #   find the CompleteMe that is the value of that key that was stripped
    # then call insert(word) on that CompleteMe - This is the recursion
    #
    #
  end
end
