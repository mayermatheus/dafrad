require 'test/unit'
require_relative 'string.rb'

class TestString < Test::Unit::TestCase

  def test_cesar_cipher
    assert_equal "VQREQFGT", "TOPCODER".cipher(2)
    assert_equal "QRSTUVWXYZABCDEFGHIJKLMNOP", "ABCDEFGHIJKLMNOPQRSTUVWXYZ".cipher(16)
    assert_equal "NOP", "ABC".cipher
  end

end
