require 'pry'
require './lib/complete_me'
require './lib/node'
require 'minitest'
require 'minitest/autorun'

class CompleteMeTest < Minitest::Test

  def test_it_exists
    completion = CompleteMe.new
    assert completion
  end

end
