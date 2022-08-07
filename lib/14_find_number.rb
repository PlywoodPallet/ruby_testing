# frozen_string_literal: true

# class for computer to find random number
class FindNumber
  attr_reader :min, :max, :answer, :guess

  def initialize(min, max, answer = RandomNumber.new(min, max), guess = nil)
    @min = min
    @max = max
    # The RandomNumber class will have an instance variable '@value'
    @answer = answer.value
    @guess = guess
  end

  def make_guess
    @guess = (min + max) / 2
  end

  def game_over?
    guess == answer
  end

    # When the guess is less than the answer:
    # - min updates to one more than the guess

    # When the guess is not less than the answer:
    # - max updates to one less than the guess
  def update_range
    if (@guess < @answer)
      @min = guess + 1
    elsif(@guess > @answer)
      @max = guess - 1
    end

  end
end
