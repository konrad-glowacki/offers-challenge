require 'rails_helper'

RSpec.describe Offer, type: :model do
  subject { described_class.new(params) }

  let(:params) do
    { uid: "player1", pub0: "campaign2", page: "1" }
  end

  describe "#all" do

    context "offers no exists" do
      before {
        expect_any_instance_of(HttpClient).to receive(:fetch_offers).and_return({ 'code' => 'NO CONTENT' })
      }

      it "returns empty array" do
        expect(subject.all).to eq([])
      end
    end

    context "offers exists" do
      before {
        expect_any_instance_of(HttpClient).to receive(:fetch_offers).and_return({ 'code' => 'OK', 'offers' => [1] })
      }

      it "returns array with offers" do
        expect(subject.all.size).to eq(1)
      end
    end
  end
end
