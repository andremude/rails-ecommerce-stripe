FactoryBot.define do
  factory :user do
    id { 1 }
    email { "admin@athlete.com" }
    password { "123456" }
    admin { true }
  end
end
