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

  def test_it_adds_downcase_letter_key_to_hash_if_it_comes_in_as_capitalized
    completion.insert("Week")
    assert completion.letter_links.has_key?("w")
  end

  def test_it_counts_single_letters_put_into_trie_as_a_word
    completion.insert("w")
    assert_equal 1, completion.count
  end

  def test_it_returns_the_count_of_words_that_are_added_to_it
    completion.insert("We")
    completion.insert("Week")
    completion.insert("pizza")
    assert_equal 3, completion.count
  end

  def test_it_counts_single_words_properly
    completion.insert("test")
    assert_equal 1, completion.count
  end

end
