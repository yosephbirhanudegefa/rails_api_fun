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

    def get_user user_id:
      conn = Faraday.new
      resp = conn.get do |req|
        req.url "https://reqres.in/api/users/#{user_id}"
        req.headers['Content-Type'] = 'application/json'
      end
      result = JSON.parse(resp.body)
    end

    def create_user name:, job:
      body_hash = {
        "name": name,
        "job": job
      }.to_json
      conn = Faraday.new
      resp = conn.post do |req|
        req.url "https://reqres.in/api/users"
        req.headers['Content-Type'] = 'application/json'
        req.body = body_hash
      end
      result = JSON.parse(resp.body)
    end

    def update_user user_id:, name:, job:
      user = get_user user_id: user_id
      body_hash = {
        "name": name,
        "job": job
      }.to_json
      conn = Faraday.new
      resp = conn.put do |req|
        req.url "https://reqres.in/api/users/#{user_id}"
        req.headers['Content-Type'] = 'application/json'
        req.body = body_hash
      end
      result = JSON.parse(resp.body)
    end
  end
end
