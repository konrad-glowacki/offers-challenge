require 'rails_helper'

RSpec.describe Offer, type: :model do
  subject { described_class.new(params) }

  let(:params) do
    { uid: "player1", pub0: "campaign2", page: "1" }
  end

  describe "#all" do
    before {
      expect_any_instance_of(HttpClient).to receive(:fetch_offers).and_return([])
    }

    it "returns offers" do
      expect(subject.all).to eq([])
    end
  end
end
