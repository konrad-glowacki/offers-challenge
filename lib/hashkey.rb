require 'digest/sha1'
require 'http_client'

class Hashkey

  attr_reader :sorted_hash

  def initialize(hash)
    @sorted_hash = hash.sort.to_h
  end

  def params_with_api_key
    sorted_hash.to_param + "&#{HttpClient::API_KEY}"
  end

  def generate
    Digest::SHA1.hexdigest(params_with_api_key)
  end

end
