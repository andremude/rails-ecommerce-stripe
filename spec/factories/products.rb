FactoryBot.define do
  factory :product do
    id { 1 }
    name { "Adidas Multix" }
    price { 100 }
    category { "Running" }
    genre { "Men" }
    brand { "Adidas" }
  end
end
