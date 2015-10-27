require 'pry'
require './lib/complete_me'
require './lib/node'
require 'minitest'
require 'minitest/autorun'

class CompleteMeTest < Minitest::Test
  attr_reader :completion

  def setup
    @completion = CompleteMe.new
  end


  def test_trie_exists
    assert completion
  end

  def test_trie_initializes_with_an_empty_hash
    assert_equal({}, completion.letter_links)
  end

  def test_it_inserts_one_letter_word_into_trie
    completion.insert("a")
    assert completion.letter_links.has_key?("a")
  end

  def test_it_adds_second_key_to_hash_if_it_didnt_exist
    completion.insert("a")
    completion.insert("b")
    assert completion.letter_links.has_key?("a")
    assert completion.letter_links.has_key?("b")
  end

  def test_it_inserts_letter_into_next_node_if_key_exists_in_previous_node_hash
    skip
    completion.insert("a")
    completion.insert("a")

  end


end
