#from http://guides.rubygems.org/make-your-own-gem/
require "marskal_dice/version"

class MarskalDice
  DEFAULT_SIDES = 6
  DEFAULT_NUMBER_OF_DICE = 1
  attr_reader :sides, :number_of_dice, :total, :values

  def initialize(p_attributes = {})
    @sides = p_attributes[:sides]||DEFAULT_SIDES
    @number_of_dice = p_attributes[:number_of_dice]||DEFAULT_NUMBER_OF_DICE

    raise ArgumentError unless @number_of_dice > 0
    raise ArgumentError, 'Integers Only' unless @number_of_dice.is_a?(Integer)

    pickup
  end

  def roll
    @values = []
    if multiple_dice?
      @total = 0
      @number_of_dice.times do
        @values << rand(1..@sides)
        @total += @values.last
      end
    else
      @values << @total = rand(1..@sides)
    end
    @total
  end

  def pickup
    @values = []
    @total = nil
  end

  def multiple_dice?
    @number_of_dice > 1
  end


end