require 'minitest/autorun'
require_relative __FILE__.split("_test").first

class HashUtilityTest < Minitest::Test
  def test_count_in_values
    assert_equal(2, HashUtility.count_in_values("nyan", {"cat" => "nyan", "dog" => "wanwan", "human" => "nyan"}))
  end

  def test_weird_array_to_hash
    assert_equal({1 => "one", 2 => "two", 3 => "three"}, HashUtility.weird_array_to_hash([1, "one", 2, "two", 3, "three"]))
  end

  def test_get_keys_with_value
    assert_equal(["cat", "human"], HashUtility.get_keys_with_value("nyan", {"cat" => "nyan", "dog" => "wanwan", "human" => "nyan"}))
  end

  def test_arrays_to_hash
    assert_equal({"nyan" => "cat", "wanwan" => "dog"}, HashUtility.arrays_to_hash(["nyan", "wanwan"], ["cat", "dog"]))
  end

end
