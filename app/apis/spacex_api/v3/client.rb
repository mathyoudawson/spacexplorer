module SpacexApi
  module V3
    class Client
      API_ENDPOINT = 'https://api.spacexdata.com/v3'.freeze

      def all_launches(limit:)
        request(
          http_method: :get,
          endpoint: "launches?limit=#{limit}"
        )
      end

      def one_launch(num)
        request(
          http_method: :get,
          endpoint: "launches/#{num}"
        )
      end

      private

      def client
        @_client ||= Faraday.new(API_ENDPOINT) do |client|
          client.request :url_encoded
          client.adapter Faraday.default_adapter
        end
      end

      def request(http_method:, endpoint:, params: {})
        response = client.public_send(http_method, endpoint, params)
        Oj.load(response.body)
      end
    end
  end
end
