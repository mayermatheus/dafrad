require_relative "array.rb"
require "test/unit"

class TestArray < Test::Unit::TestCase

  def test_array_count_elements
    ar = [1, 2, 1]
    assert_equal({"1"=>2, "2"=>1}, ar.count_elements)

    ar = [1, 2, 1, 3, 1]
    assert_equal({"1"=>3, "2"=>1, "3"=>1}, ar.count_elements)
  end

  def test_extract_repeated_values
    ar = [1, 2, 1, 3, 3, 3]

    assert_equal [1, 3], ar.repeated_from
    assert_equal [1, 3], ar.repeated_from(2)
    assert_equal [3], ar.repeated_from(3)
    assert_equal [], ar.repeated_from(4)
  end

  def test_array_apply_operation
    ar = [1, 2, 1]
    assert_equal(4, ar.apply_operation(:+))
    assert_equal(2, ar.apply_operation(:*))
    assert_equal(1, ar.apply_operation(:avg))
    assert_raise{ar.apply_operation(:not_exist)}
 		ar += [4, 5]
 		assert_equal(13, ar.apply_operation(:+))
    assert_equal(40, ar.apply_operation(:*))
    assert_equal(2, ar.apply_operation(:avg))
  end

end
