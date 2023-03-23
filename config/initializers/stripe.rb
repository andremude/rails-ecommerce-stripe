require 'stripe'

if Rails.application.credentials[:stripe]
  Stripe.api_key = Rails.application.credentials[:stripe][:secret]
end
