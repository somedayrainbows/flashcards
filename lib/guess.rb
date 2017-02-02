# require 'pry'
class Guess
  attr_reader :response, :card

  def initialize(response, card)
    @response = response
    @card = card
  end

  def correct?
    response == card.answer
    # this method should check to see if the response is correct
  end

  def feedback
    if correct?
      "Correct!"
    else
      "Incorrect."
    end
  end

end
