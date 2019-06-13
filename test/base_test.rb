# frozen_string_literal: true

require './test/test_helper'

class URLVoidBaseTest < Minitest::Test
  def test_class_exists
    assert URLVoid::Base
  end

  # Instance Method
  def test_api_uri_instance_method
    base_uri = 'http://api.urlvoid.com/'
    vt_base  = URLVoid::Base.new

    assert vt_base.api_uri.is_a?(String)
    assert vt_base.api_uri, base_uri
  end

  # Class Method
  def test_api_uri_class_method
    base_uri = 'http://api.urlvoid.com/'

    assert URLVoid::Base.api_uri.is_a?(String)
    assert URLVoid::Base.api_uri, base_uri
  end
end
