# demo_test.rb hi hans
require 'minitest/autorun'
require_relative './demo'

class TestDemo < Minitest::Test
  def setup
    @demo = Demo.new
  end

  def test_hello_world
    assert_equal "Hello World", @demo.hello_world
  end

  def test_addition
    assert_equal 4, @demo.add(2, 2)
  end

  def test_subtraction
    assert_equal 1, @demo.subtract(3, 2)
  end

  def test_add_ten
    assert_equal 11, @demo.add_ten(1)
  end
end
