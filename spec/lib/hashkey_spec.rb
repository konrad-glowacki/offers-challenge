require 'rails_helper'
require 'hashkey'

RSpec.describe Hashkey, type: :model do
  subject { described_class.new(params) }

  let(:params) do
    { potato: "1", apple: "2", orange: "3" }
  end

  describe "#sorted_hash" do
    it "returns sorted hash" do
      expect(subject.sorted_hash).to eq({ apple: "2", orange: "3", potato: "1" })
    end
  end

  describe "#params_with_api_key" do
    it "returns hash as params url with api key" do
      expect(subject.params_with_api_key).to eq("apple=2&orange=3&potato=1&b07a12df7d52e6c118e5d47d3f9e60135b109a1f")
    end
  end

  describe "#generate" do
    it "returns sh1 hash from params" do
      expect(subject.generate).to eq("0887b180844e4238eff824d2d6dc243c03c8f365")
    end
  end
end
