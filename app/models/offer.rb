require 'http_client'

class Offer
  include ActiveModel::Model

  attr_accessor :uid, :pub0, :page

  validates :uid, presence: true

  def all
    http_client = HttpClient.new(uid: uid, pub0: pub0, page: page)
    results = http_client.fetch_offers
    results['count'].zero? ? [] : results['offers']
  end
end
