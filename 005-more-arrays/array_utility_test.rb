require 'minitest/autorun'
require_relative __FILE__.split("_test").first

class ArrayUtilityTest < Minitest::Test
  def test_one_to_one_hundred
    assert_equal(
      [1,88,100].sort,
      ArrayUtility.one_to_one_hundred([-3,1,-20,88,283,100,300]).sort
    )
  end

  def test_more_than_one_in_set
    assert_equal(
      [1,6,8,29,4].sort,
      ArrayUtility.more_than_one_in_set([1,1,3,4,6,6,4,8,8,29,29,100,101,102]).sort
    )
  end

  def test_pairs_of_same
    assert_equal(
      [[1,1],[4,4],[6,6],[8,8],[29,29],[29,29]].sort,
      ArrayUtility.pairs_of_same([1,1,3,29,4,6,4,6,8,29,29,1,100,8,101,102,29]).sort
    )
  end

  def test_pairs_equal_100
    assert_equal(
      [[17,83],[44,56],[0,100],[2,98]].map(&:sort).sort,
      ArrayUtility.pairs_equal_100([17,56,42,83,2,44,31,0,11,13,27,17,98,100]).map(&:sort).sort
    )
  end
end
