require 'pry'
require_relative 'node'

class CompleteMe
  attr_reader :letter_links, :head

  def initialize(a_letter="")
    @letter = a_letter
    @head = Node.new
  end

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

  # def suggest(suggestion_str)
  #   word_suggestions = [""]
  #   head.node_suggest(suggestion_str, word_suggestions)
  # end
  #
  # def select(suggestion_str, desired_word)
  #   head.node_select(suggestion_str, desired_word)
  # end

end
