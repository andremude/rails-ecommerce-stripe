require 'rails_helper'

RSpec.describe Product, type: :model do

  subject(:product) { FactoryBot.create(:product) }

  describe "validations" do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end

    it "is not valid without a name" do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without a price" do
      subject.price = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without a category" do
      subject.category = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without a genre" do
      subject.genre = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without a brand" do
      subject.brand = nil
      expect(subject).to_not be_valid
    end
  end

  describe 'factory' do
    it 'has a valid factory' do
      expect(build(:product)).to be_valid
    end
  end

  describe "to_s" do
    it "returns the product name" do
      expect(product.to_s).to eq("Adidas Multix")
    end
  end

  describe "after_create" do
    it "creates a new Stripe product and price" do
      expect(Stripe::Product).to receive(:create).with(name: "Adidas Multix").and_call_original
      expect(Stripe::Price).to receive(:create).and_call_original
      product
    end

    it "assigns the Stripe product and price IDs to the product" do
      expect(product.stripe_product_id).to_not be_nil
      expect(product.stripe_price_id).to_not be_nil
    end
  end
end
