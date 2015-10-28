require 'pry'
require './lib/node'

class CompleteMe
  attr_reader :letter_links, :head

  # , :valid_word, :letter
# valid_word=false,
  def initialize(a_letter="")
    @letter = a_letter
    @head = Node.new
    # @valid_word = valid_word
  end

  # def add_first_letter_to_letter_links(word)
  #   if word.size == 1
  #     letter_links[word[0]] = CompleteMe.new(true)
  #     @letter = word[0]
  #   else
  #     letter_links[word[0]] = CompleteMe.new
  #     @letter = word[0]
  #   end
  # end
  #
  # def insert(word)
  #   word.downcase!
  #   until word.size == 0 do
  #     if letter_links.has_key?(word[0]) == false
  #       add_first_letter_to_letter_links(word)
  #     else
  #       letter_key = word.slice!(0)
  #       letter_links[letter_key].insert(word)
  #     end
  #   end
  # end
  # def count
  #   count = 0
  #   letter_links.each do |key, value|
  #       count = count + value.count
  #   end
  #   if valid_word == true
  #     count += 1
  #   end
  #   return count
  # end

  def insert(word)
    head.node_insert(word)
  end

  def populate(string)
    dict_arry = string.split("\n")
    dict_arry.each do |word|
      insert(word)
    end
  end

  def count
    head.node_count
  end

  def suggest(suggestion_str)
    head.node_suggest(suggestion_str)
  end

  # def suggest(suggestion_str)
  #   # start with first letter of suggestion
  #   first_letter = suggestion_str[0]
  #
  #   # get the node with that letter as key
  #   return [] unless letter_links.has_key?(first_letter)
  #   next_node = letter_links[first_letter]
  #
  #   # call suggest on that node with the suggestion_str minus the first letter
  #   next_node.suggest(suggestion_str[1..-1])
  #
  #   # if that node has a true value return it's own value AND the values "below" it
  #   if valid_word
  #     return letter_links
  #   end
  #
  #   # end case 1 - no more leaves
  #   # end case 2 - suggest_str length is 0
  #   # end case 3 - no node of the first letter in letter_link
  # end

end
