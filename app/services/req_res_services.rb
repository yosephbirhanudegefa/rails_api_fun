require 'net/http'
require 'uri'
require 'json'
require 'faraday'

class ReqResServices
  class << self
    def get_all_users
      conn = Faraday.new
      resp = conn.get do |req|
        req.url 'https://reqres.in/api/users'
        req.headers['Content-Type'] = 'application/json'
      end
      result = JSON.parse(resp.body)
    end
  end
end
