class DashboardController < ApplicationController

  def index
    @offer_form = OfferForm.new
  end

end
