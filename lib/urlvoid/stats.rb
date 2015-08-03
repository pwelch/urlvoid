require_relative 'base'

module URLVoid
  class Stats < Base
    def self.remaining_queries(api_key, opts={})
      identifier = opts.fetch('identifier', 'api1000')

      response = RestClient.get(
        "#{api_uri}#{identifier}/#{api_key}/stats/remained/"
      )

     doc   = Nokogiri::XML(response)
     Hash.from_xml(doc.to_s)['response']['queriesRemained']
    end
  end
end
