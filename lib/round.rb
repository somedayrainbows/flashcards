require 'pry'

class Round 
  attr_reader :deck, :guesses, :current_card

  def initialize(deck)
    @deck = deck
    @guesses = []
  end

  def current_card
    @current_card = deck.cards[guesses.count]
  end

  def record_guess(response)
    new_response = Guess.new(response, current_card)
    @guesses << new_response
    new_response
  end

  def number_correct
    number_correct = guesses.each do |response|
      response.correct?
      "Correct!"
    end
    number_correct.count
  end
end