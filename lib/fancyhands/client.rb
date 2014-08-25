require 'json'
require 'faraday'
require 'faraday_middleware'

module Fancyhands
  class Client < ::Struct.new(:key, :secret)
    VERSION = "0.0.1"
    API_ROOT = "https://www.fancyhands.com/api/v1"

    def echo type=:get, params={}
      response = connection.send(type, '/echo/')
      puts response.headers.inspect
      puts response.body.inspect
    end

    private
    def connection
      @connection ||= Faraday::new API_ROOT do |conn|
        conn.request :oauth,  consumer_key: key, consumer_secret: secret
      end
    end
  end
end
