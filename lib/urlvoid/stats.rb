# frozen_string_literal: true

require_relative 'base'

module URLVoid
  class Stats < Base
    # @param [String] api_key for URLVoid API
    # @param [Hash] opts hash for additional options
    # @return [Fixnum] count of remaining API requests
    def self.remaining_queries(api_key, opts={})
      identifier = opts.fetch('identifier', 'api1000')

      response = RestClient.get(
        "#{api_uri}#{identifier}/#{api_key}/stats/remained/"
      )

      doc = Nokogiri::XML(response)
      Hash.from_xml(doc.to_s)['response']['queriesRemained'].to_i
    end
  end
end
