class Offer
  include ActiveModel::Model

  attr_accessor :uid, :pub0, :page

  validates :uid, presence: true
end
