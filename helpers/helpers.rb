require "uri"
require "net/http"
module Helpers
  BASE_URL = "https://petstore.swagger.io/v2"

  def call_get path
    uri = URI.parse(BASE_URL+path)
    begin
      http = Net::HTTP.new(uri.host,uri.port)
      response = http.request(Net::HTTP::Get.new(uri))
    rescue => exception
      raise exception
    end
    response
  end

  def call_post path, body
    url = URI(BASE_URL+path)
    begin
      https = Net::HTTP.new(url.host, url.port)
      https.use_ssl = true
      request = Net::HTTP::Post.new(url)
      request["Content-Type"] = "application/json"
      request["Accept"] = "application/json"
      request.body = body
    rescue => exception
      raise exception
    end
    https.request(request)
  end

  

end