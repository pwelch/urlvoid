require_relative 'base'

module URLVoid
  class Host < Base
    attr_reader :response

    def initialize(response)
      @response = response['response']
    end

    # @param [String] api_key for URLVoid API
    # @param [String] host to check
    # @param [Hash] opts hash for additional options
    # @return [URLVoid::Host] Response
    def self.info(api_key, hostname, opts={})
      identifier = opts.fetch('identifier', 'api1000')

      response = RestClient.get(
        "#{api_uri}#{identifier}/#{api_key}/host/#{hostname}/"
      )

      doc = Nokogiri::XML(response)
      new(Hash.from_xml(doc.to_s))
    end

    # @return [Hash] of detections
    def detections
      response['detections']
    end
  end
end
