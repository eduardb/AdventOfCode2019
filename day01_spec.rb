require_relative 'day01'
require 'test/unit'

class Day01 < Test::Unit::TestCase
  def test_fuel_for_mass
    assert_equal(2, fuel_for(12))
    assert_equal(2, fuel_for(14))
    assert_equal(654, fuel_for(1969))
    assert_equal(33583, fuel_for(100756))
  end

  def test_recursive_fuel_for_mass
    assert_equal(2, recursive_fuel_for(12))
    assert_equal(2, recursive_fuel_for(14))
    assert_equal(966, recursive_fuel_for(1969))
    assert_equal(50346, recursive_fuel_for(100756))
  end
end
