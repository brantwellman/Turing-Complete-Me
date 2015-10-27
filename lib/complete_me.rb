require 'pry'
require './lib/node'

class CompleteMe
  attr_reader :letter_links, :valid_word

  def initialize(valid_word = false)
    @letter_links = {}
    @valid_word = valid_word
  end

  def add_first_letter_to_letter_links(word)
    if word.size == 1
      letter_links[word[0]] = CompleteMe.new(true)
    else
      letter_links[word[0]] = CompleteMe.new
    end
  end

  def insert(word)
    word.downcase!
    until word.size == 0 do
      if letter_links.has_key?(word[0]) == false
        add_first_letter_to_letter_links(word)
      else
        letter_key = word.slice!(0)
        letter_links[letter_key].insert(word)
      end
    end
  end

  def count
    count = 0
    letter_links.each do |key, value|
        count = count + value.count
    end
    if valid_word == true
      count += 1
    end
    return count
  end

  def suggest(string)

  end

end
