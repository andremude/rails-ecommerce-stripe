class CheckoutController < ApplicationController

  def create
    product = Product.find(params[:id])
    session = Stripe::Checkout::Session.create({
      payment_method_types: ['card'],
      line_items: [{
        price_data: {
          currency: "usd",
          unit_amount: product.price,
            product_data: {
              name: product.name
            }
        },
        quantity: 1
      }],
      mode: 'payment',
      success_url: root_url,
      cancel_url: root_url
    })
    respond_to do |format|
      format.js
    end
  end
end
