require 'rails_helper'

RSpec.describe PagesController, type: :controller do
  describe "GET #home" do
    let!(:product9) { FactoryBot.create(:product, id: 10, name: "Product 9", price: 100) }
    let!(:product10) { FactoryBot.create(:product, id: 11, name: "Product 10", price: 75) }


    it "renders the home template" do
      get :home
      expect(response).to render_template("home")
    end

    it "assigns all products to @products" do
      get :home
      expect(assigns(:products)).to match_array([product9, product10])
    end
  end
end
