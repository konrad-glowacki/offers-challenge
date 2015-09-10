class DashboardController < ApplicationController

  def new
    @offer_form = OfferForm.new
  end

  def create
    render :index
  end

end
