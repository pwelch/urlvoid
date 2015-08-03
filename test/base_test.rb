require './test/test_helper'

class URLVoidBaseTest < Minitest::Test
  def test_class_exists
    assert URLVoidBase
  end

  # Instance Method
  def test_api_uri_instance_method
    base_uri = 'http://api.urlvoid.com/'
    vt_base  = URLVoidBase.new

    assert vt_base.api_uri.is_a?(String)
    assert vt_base.api_uri, base_uri
  end

  # Class Method
  def test_api_uri_class_method
    base_uri = 'http://api.urlvoid.com/'

    assert URLVoidBase.api_uri.is_a?(String)
    assert URLVoidBase.api_uri, base_uri
  end
end
