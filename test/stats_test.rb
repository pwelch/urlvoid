require './test/test_helper'

class URLVoidStatsTest < Minitest::Test
  def setup
    @api_key = 'testapikey'
  end

  def test_class_exists
    assert URLVoid::Stats
  end

  def test_queries_remain
    VCR.use_cassette('stats_remain') do
      urlvoid_stats = URLVoid::Stats.remaining_queries(@api_key)
      assert urlvoid_stats.is_a?(Fixnum)
    end
  end
end
