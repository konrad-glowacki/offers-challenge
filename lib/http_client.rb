class HttpClient

  HTTP_HOST = "http://api.sponsorpay.com"

  def initialize(uid:, pub0:, page:)
    @conn = Faraday.new(url: HTTP_HOST)
    @uid = uid
    @pub0 = pub0
    @page = page || 1
  end

  def fetch_offers
    @conn.get('feed/v1/offers.json', final_params)
  end

  def final_params

  end

  def params
    @params ||= default_params.merge({ uid: @uid, pub0: @pub0, page: @page })
  end

  private

  def generate_hashkey

  end

  def default_params
    {
      appid: "157",
      format: "json",
      device_id: "2b6f0cc904d137be2e1730235f5664094b83",
      locale: "de",
      ip: "109.235.143.113",
      offer_types: "112"
    }
  end

end
