require 'rails_helper'

RSpec.describe CheckoutController, type: :controller do
  let(:user) { FactoryBot.create(:user) }
  let!(:product7) { FactoryBot.create(:product, id: 8, name: "Product 7", price: 100) }
  let!(:product8) { FactoryBot.create(:product, id: 9, name: "Product 8", price: 75) }

  let(:cart) { [product7, product8] }

  before do
    sign_in user
    session[:cart] = cart.map(&:id)
  end

  describe "create" do
    it "creates a new Stripe session with the correct parameters" do
      allow(Stripe::Checkout::Session).to receive(:create).and_return({ id: "session_123" })

      post :create, format: :js

      expect(Stripe::Checkout::Session).to have_received(:create).with({
        customer: user.stripe_customer_id,
        payment_method_types: ['card'],
        line_items: cart.map { |item| item.to_builder.attributes! },
        allow_promotion_codes: true,
        mode: 'payment',
        success_url: success_url + "?session_id={CHECKOUT_SESSION_ID}",
        cancel_url: cancel_url
      })
      expect(assigns(:session)).to eq({ id: "session_123" })
    end
  end
end
