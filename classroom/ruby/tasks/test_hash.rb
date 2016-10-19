require 'test/unit'
require_relative 'hash.rb'

class TestString < Test::Unit::TestCase

  def test_sort_hash_by_key_or_value
    hash = {"10"=>5, "05"=>3, "01"=>4}

    assert_equal({"01"=>4, "05"=>3, "10"=>5}, hash.sort_by_key)
    assert_equal({"05"=>3, "01"=>4, "10"=>5}, hash.sort_by_value)
  end

  def test_inverse_sort_hash
    hash = {"10"=>5, "05"=>3, "01"=>4}

    assert_equal({"10"=>5, "05"=>3, "01"=>4}, hash.sort_by_value_inverse)
    assert_equal({"10"=>5, "01"=>4, "05"=>3}, hash.sort_by_value_inverse(:value))
  end

end
