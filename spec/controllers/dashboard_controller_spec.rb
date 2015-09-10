require 'rails_helper'

RSpec.describe DashboardController, type: :controller do
  render_views

  describe "GET #new" do
    it "renders new template" do
      get :new
      expect(response).to render_template('new')
    end
  end

  describe "POST #create" do
    let(:params) do
      { uid: "player1", pub0: "campaign2", page: "1" }
    end

    it "renders index template" do
      post :create, offer: params
      expect(response).to render_template('index')
    end
  end

end
