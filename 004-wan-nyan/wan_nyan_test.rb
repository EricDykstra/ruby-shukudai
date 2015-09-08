require 'minitest/autorun'
require_relative __FILE__.split("_test").first

class WanNyanTest < Minitest::Test
  def test_wan_nyan
    assert_equal(["1","2","Wan","Nyan","5","Wan","7","Nyan","Wan","10","11","WanNyan","13","14","Wan","Nyan","17","Wan","19","Nyan","Wan","22","23","WanNyan","25","26","Wan","Nyan","29","Wan","31","Nyan","Wan","34","35","WanNyan","37","38","Wan","Nyan","41","Wan","43","Nyan","Wan","46","47","WanNyan","49","50","Wan","Nyan","53","Wan","55","Nyan","Wan","58","59","WanNyan","61","62","Wan","Nyan","65","Wan","67","Nyan","Wan","70","71","WanNyan","73","74","Wan","Nyan","77","Wan","79","Nyan","Wan","82","83","WanNyan","85","86","Wan","Nyan","89","Wan","91","Nyan","Wan","94","95","WanNyan","97","98","Wan","Nyan"],WanNyan.run(100))
  end
end
