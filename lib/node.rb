require_relative 'complete_me'
require 'pry'

class Node
  attr_accessor :letter, :letter_links, :valid_word, :word_count

  def initialize(data="", is_valid_word = false)
    @letter = data
    @letter_links = {}
    @valid_word = is_valid_word
    @word_count = 0
  end

  def add_first_letter_to_letter_links(word)
    if word.size == 1
      letter_links[word[0]] = Node.new(word[0], true)
    else
      letter_links[word[0]] = Node.new(word[0])
    end
  end

  def node_insert(word)
    @word_count += 1
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
    @word_count
  end

  def node_suggest(suggest_str, word_suggestions)
    new_word = ""
    until suggest_str.length == 0

      first_letter = suggest_str[0]
      suggest_str = suggest_str[1..-1]

      next_node = letter_links[first_letter]

      return [] unless letter_links.has_key?(first_letter)

      if next_node.valid_word
        new_word = new_word + next_node.letter
      else

        new_word = new_word + next_node.letter

      end
      word_suggestions << new_word
    end
    word_suggestions
  end

  # def collect_words(word_suggestions)
  #
  # end

  def node_select(suggestion_str, desired_word)

  end
end


# def node_count
#   count = 0
#   letter_links.each do |key, value|
#       count = count + value.node_count
#   end
#   if valid_word == true
#     count += 1
#   end
#   return count
# end

# def node_suggest(suggest_str, word_suggestions)
#   new_word = ""
#   # while valid_word == false
#   # binding.pry
#   until suggest_str.length == 0
#     # binding.pry
#     first_letter = suggest_str[0]
#     suggest_str = suggest_str[1..-1]
#     # Always -> if (at any point in the call) suggest_str[0] is not in the hash return empty array
#     next_node = letter_links[first_letter]
#     # binding.pry
#     return [] unless letter_links.has_key?(first_letter)
#     # binding.pry
#     # new_word = collect_words
#     if next_node.valid_word
#       new_word = new_word + next_node.letter
#     else
#       # binding.pry
#       new_word = new_word + next_node.letter
#       # binding.pry
#       # word_suggestions.last + next_node.letter
#     end
#     word_suggestions << new_word
#
#     # binding.pry
#     # next_node.node_suggest(suggest_str, word_suggestions)
#   end
#   # binding.pry
#   word_suggestions
# end
