gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative "../lib/guess"
require_relative "../lib/card"


class GuessTest < Minitest::Test

    def test_it_takes_a_card
      card = Card.new("What is the capital of Alaska?", "Juneau")
      guess = Guess.new("Juneau", card)
      
      assert_equal card, guess.card
    end

    def test_is_there_a_guess
      card = Card.new("What is the capital of Alaska?", "Juneau")
      guess = Guess.new("Juneau", card)

      assert_equal "Juneau", guess.response
    end

    def test_is_the_guess_correct
      card = Card.new("What is the capital of Alaska?", "Juneau")
      guess = Guess.new("Juneau", card)
      
      assert_equal true, guess.correct?  # assert guess.correct? would also be right
      assert_equal "Correct!", guess.feedback
    end

    def test_is_the_guess_incorrect
      card = Card.new("Which planet is closest to the sun?", "Mercury")
      guess = Guess.new("Saturn", card)

      assert_equal false, guess.correct? # refute guess.correct? would also be right
      assert_equal "Incorrect.", guess.feedback
    end
end



# card = Card.new produces a new card with the question "What is the capital of Alaska?" on it with the answer "Juneau". 

# guess = Guess.new produces a new guess with the answer "Juneau" to the new card being shown to the user.

# guess.card runs the method card on the class guess and produces a new instance of guess that asks the user to guess.

# guess.response runs the method response on guess and produces a new instance of guess that 