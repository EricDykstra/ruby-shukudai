require 'minitest/autorun'
require_relative __FILE__.split("_test").first


class AwesomeArrayTest < Minitest::Test
  def test_size
    assert_equal 7, AwesomeArray.size([1,2,3,4,5,6,7])
  end

  def test_combine
    assert_equal [1,2,3,4,5], AwesomeArray.combine([1,2,3], [4,5])
  end

  def test_repeat_array_twice
    assert_equal [1,2,3,1,2,3], AwesomeArray.repeat_array_twice([1,2,3])
  end

  def test_count_instances_of_element
    assert_equal 3, AwesomeArray.count_instances_of_element([1,2,3,4,5,6,5,4,5,6,7,8,9], 5)
  end

  def test_flatten
    assert_equal [1,2,3,4], AwesomeArray.flatten([1,[2,3,[4]]])
  end

  def test_remove_numbers_less_than_0_or_over_100
    assert_equal [2,6,89,2], AwesomeArray.remove_numbers_less_than_0_or_over_100([101,-2,2,6,333,89,2,822])
  end

  def test_add_n_to_every_element
    assert_equal [3,4,5], AwesomeArray.add_n_to_every_element([1,2,3], 2)
  end
end
