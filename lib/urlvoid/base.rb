require 'rest-client'
require 'nokogiri'
require 'active_support/core_ext/hash'

module URLVoid
  class Base
    # @return [String] string of API URI class method
    def self.api_uri
      'http://api.urlvoid.com/'
    end

    # @return [String] string of API URI instance method
    def api_uri
      self.class.api_uri
    end
  end
end
