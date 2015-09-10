require 'rails_helper'
require 'http_client'

RSpec.describe HttpClient, type: :model do
  subject { described_class.new(params) }

  let(:params) do
    { uid: "player1", pub0: "campaign2", page: "1" }
  end

  describe "#params" do
    it "returns all params" do
      required_keys = [:appid, :format, :device_id, :locale, :ip, :offer_types, :timestamp, :uid, :pub0, :page]
      expect(subject.params.keys).to eq(required_keys)
    end
  end

  describe "#hashkey" do
    it "returns generated hashkey" do
      expect(subject.hashkey).to be_present
    end
  end

  describe "#final_params" do
    it "contains hashkey in final_params" do
      expect(subject.final_params).to have_key(:hashkey)
    end
  end

  describe "#fetch_offers" do
    let(:conn) do
      response = instance_double('response', body: '{"message":"some"}')
      instance_double('connection', get: response)
    end

    before {
      expect(subject).to receive(:conn).and_return(conn)
    }

    it "returns hash with results" do
      expect(subject.fetch_offers).to eq({ "message" => "some" })
    end
  end
end
