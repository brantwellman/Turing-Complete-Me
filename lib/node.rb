require './lib/complete_me'
require 'pry'

class Node
  attr_accessor :letter, :letter_links, :valid_word

  def initialize(data="", is_valid_word = false)
    @letter = data
    @letter_links = {}
    @valid_word = is_valid_word
  end

  def add_first_letter_to_letter_links(word)
    if word.size == 1
      letter_links[word[0]] = Node.new(word[0], true)
    else
      letter_links[word[0]] = Node.new(word[0])
    end
  end

  def node_insert(word)
    word.downcase!
    until word.size == 0 do
      if letter_links.has_key?(word[0]) == false
        add_first_letter_to_letter_links(word)
      else
        letter_key = word.slice!(0)
        letter_links[letter_key].node_insert(word)
      end
    end
  end

  def node_count
    count = 0
    letter_links.each do |key, value|
        count = count + value.node_count
    end
    if valid_word == true
      count += 1
    end
    return count
  end

  def node_suggest(suggest_str)
    # end case 2 - suggest_str length is 0
    return if suggest_str.length == 0
    # start with first letter of suggestion
    first_letter = suggest_str[0]
    # binding.pry
    # get the node with that letter as key
    return [] unless letter_links.has_key?(first_letter)
    next_node = letter_links[first_letter]
    # binding.pry
    # if that node has a true value return it's own value AND the values "below" it

    # binding.pry
    # call suggest on that node with the suggestion_str minus the first letter
    next_node.node_suggest(suggest_str[1..-1])
    # binding.pry
    if next_node.valid_word
      return next_node.letter
    end

    # end case 1 - no more leaves - this should be a valid word...same as valid word case
    # **end case 2 - suggest_str length is 0
    # **return if suggest_str.length == 0
    # **end case 3 - no node of the first letter in suggest_str
    # **return [] unless letter_links.has_key?(first_letter)
  end
end
