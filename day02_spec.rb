require_relative 'day02'
require 'test/unit'

class Day02 < Test::Unit::TestCase
  def test_intcode_program
    assert_equal(2, intcode_program(parse("1,0,0,0,99")))
    assert_equal(2, intcode_program(parse("2,3,0,3,99")))
    assert_equal(4, intcode_program(parse("2,2,2,0,99")))
    assert_equal(30, intcode_program(parse("1,1,1,4,99,5,6,0,99")))
    assert_equal(2, intcode_program(parse("1,1,1,0,99,5,6,0,2,2,2,0,99")))
    assert_equal(3500, intcode_program(parse("1,9,10,3,2,3,11,0,99,30,40,50")))
  end

end
