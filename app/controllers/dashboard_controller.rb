class DashboardController < ApplicationController

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(params[:offer])

    if @offer.valid?
      @offers = @offer.all
      render :index
    else
      render :new
    end
  end

end
