require 'minitest/autorun'
require_relative __FILE__.split("_test").first


class StringAndArrayUtilityTest < Minitest::Test
  def test_same_word_1
    assert_equal(true, StringAndArrayUtility.same_word?("car", "car"))
  end

  def test_same_word_2
    assert_equal(true, StringAndArrayUtility.same_word?("cAr", "cAR"))
  end

  def test_same_word_3
    assert_equal(false, StringAndArrayUtility.same_word?("car", "caramel"))
  end

  def test_word_in_string_true
    assert_equal(true, StringAndArrayUtility.word_in_string?("car", "chuisjklcarajlenrwmf"))
  end

  def test_word_in_string_false
    assert_equal(false, StringAndArrayUtility.word_in_string?("car", "truck"))
  end

  def test_count_words_in_strings
    assert_equal(2, StringAndArrayUtility.count_number_of_times_word_is_in_sentence("cars", "i like cars and caramels and cars"))
  end

  def test_unique_words
    assert_equal(["i", "like", "cars", "and", "caramels"].sort, StringAndArrayUtility.unique_words("i like cars and caramels and cars").sort)
  end

  def test_unique_words_with_count
    assert_equal({"i" => 1, "like" => 1, "cars" => 2, "and" => 2, "caramels" => 1}, StringAndArrayUtility.unique_words_with_count("i like cars and caramels and cars"))
  end

end
