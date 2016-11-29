require_relative 'test_helper'

class MarskalDiceTest < Minitest::Test

  def test_that_it_has_a_version_number
    refute_nil ::MarskalDice::VERSION
  end

  def test_that_die_defaults_to_six_sides
    l_dice = MarskalDice.new
    assert_equal l_dice.sides, 6
  end

  def test_that_defaults_to_single_die
    l_dice = MarskalDice.new
    assert_equal l_dice.number_of_dice, 1
  end

  def test_that_values_returns_array_length_equal_to_number_of_dice
    l_dice = MarskalDice.new(number_of_dice: 15)
    l_dice.roll
    assert_instance_of(Array, l_dice.values)
    assert_equal l_dice.number_of_dice, l_dice.values.length
  end

  def test_that_sum_of_values_equals_dice_total
    l_dice = MarskalDice.new(number_of_dice: 15)
    l_dice.roll
    assert_equal l_dice.total, l_dice.values.inject(0, :+)
  end


end
