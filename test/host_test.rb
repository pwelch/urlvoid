require './test/test_helper'

class URLVoidHostTest < Minitest::Test
  def setup
    @api_key = 'testapikey'
  end

  def test_class_exists
    assert URLVoid::Host
  end

  def test_host_info_response
    VCR.use_cassette('host') do
      urlvoid_host_info = URLVoid::Host.info(@api_key, 'google.com')
      assert urlvoid_host_info.response.is_a?(Hash)
    end
  end

  def test_host_info_detections
    VCR.use_cassette('host') do
      urlvoid_host_info = URLVoid::Host.info(@api_key, 'google.com')
      assert urlvoid_host_info.detections.is_a?(Hash)
      assert urlvoid_host_info.detections['count'] == '1'
    end
  end
end
