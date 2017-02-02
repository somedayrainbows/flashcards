gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative "../lib/card"


class CardTest < Minitest::Test

    def test_it_has_a_question
      card = Card.new("What is the capital of Alaska?", "Juneau")
      
      assert_equal "What is the capital of Alaska?", card.question
    end

    def test_it_has_an_answer
      card = Card.new("What is the capital of Alaska?", "Juneau")
      
      assert_equal "Juneau", card.answer
    end

end