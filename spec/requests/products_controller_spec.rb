require 'rails_helper'

RSpec.describe ProductsController, type: :controller do
  let(:product) { FactoryBot.create(:product) }

  describe "GET #index" do
    let!(:product1) { FactoryBot.create(:product, id: 2, name: "Adidas XI", genre: "Men", category: "Running", brand: "Adidas", price: 65, created_at: 4.days.ago) }
    let!(:product2) { FactoryBot.create(:product, id: 3, name: "Nike V", genre: "Women", category: "Urban", brand: "Nike", price: 80, created_at: 5.days.ago) }
    let!(:product3) { FactoryBot.create(:product, id: 4, name: "Puma M", genre: "Kids", category: "Training", brand: "Puma", price: 90, created_at: 6.days.ago) }

    it "returns a 200 status code" do
      get :index
      expect(response).to have_http_status(200)
    end

    context "with query parameter" do
      it "returns products with matching name or genre" do
        get :index, params: { query: "Adidas" }
        expect(assigns(:products)).to eq([product1])
      end

      it "returns products with matching genre" do
        get :index, params: { query: "Kids" }
        expect(assigns(:products)).to eq([product3])
      end

      it "ignores case when searching by name" do
        get :index, params: { query: "Nike V" }
        expect(assigns(:products)).to eq([product2])
      end
    end

    context "with genre, category, and brand parameters" do
      it "returns products with matching genre" do
        get :index, params: { genre: "Men" }
        expect(assigns(:products)).to eq([product1])
      end

      it "returns products with matching category" do
        get :index, params: { category: "Urban" }
        expect(assigns(:products)).to eq([product2])
      end

      it "returns products with matching brand" do
        get :index, params: { brand: "Puma" }
        expect(assigns(:products)).to eq([product3])
      end

      it "returns products with multiple matching parameters" do
        get :index, params: { genre: "Kids", category: "Training", brand: "Puma" }
        expect(assigns(:products)).to eq([product3])
      end
    end

    context "with sort_by parameter" do
      let!(:product4) { FactoryBot.create(:product, id: 5, name: "Product 4", discount: 10, price: 100, created_at: 2.days.ago) }
      let!(:product5) { FactoryBot.create(:product, id: 6, name: "Product 5", discount: 5, price: 75, created_at: 1.day.ago) }
      let!(:product6) { FactoryBot.create(:product, id: 7, name: "Product 6", discount: nil, price: 70, created_at: 3.days.ago) }

      it "returns products with discounts" do
        get :index, params: { sort_by: "discount_product" }
        expect(assigns(:products)).to eq([product4, product5])
      end

      it "returns products sorted by price low to high" do
        get :index, params: { sort_by: "price_low_to_high" }
        expect(assigns(:products)).to eq([product1, product6, product5, product2, product3, product4])
      end

      it "sorts products by price high to low" do
        get :index, params: { sort_by: "price_high_to_low" }
        expect(assigns(:products)).to eq([product4, product3, product2, product5, product6, product1])
      end

      it "sorts products by newest arrivals" do
        get :index, params: { sort_by: "newest_arrivals" }
        expect(assigns(:products)).to eq([product5, product4, product6, product1, product2, product3])
      end
    end
  end

  describe "GET #show" do
    let!(:product) { create(:product) }

    it "assigns the requested product to @product" do
      get :show, params: { id: product.id }
      expect(assigns(:product)).to eq(product)
    end
  end

  describe "GET #new" do
    it "assigns a new product to @product" do
      get :new
      expect(assigns(:product)).to be_a_new(Product)
    end
  end

  describe "POST #create" do
    context "with valid attributes" do
      it "creates a new product" do
        expect {
        post :create, params: { product: attributes_for(:product) }
        }.to change(Product, :count).by(1)
      end

      it "redirects to the created product" do
        post :create, params: { product: attributes_for(:product) }
        expect(response).to redirect_to(Product.last)
      end
    end

    context "with invalid attributes" do
      it "does not create a new product" do
        expect {
          post :create, params: { product: attributes_for(:product, name: nil) }
        }.to_not change(Product, :count)
      end

      it "renders the new template with unprocessable_entity status" do
        post :create, params: { product: attributes_for(:product, name: nil) }
        expect(response).to render_template(:new)
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe "GET #edit" do
    let!(:product) { create(:product) }

    it "assigns the requested product to @product" do
      get :edit, params: { id: product.id }
      expect(assigns(:product)).to eq(product)
    end
  end

  describe "PUT #update" do
    let!(:product) { create(:product) }

    context "with valid attributes" do
      it "updates the product" do
        put :update, params: { id: product.id, product: { name: "New Name" } }
        product.reload
        expect(product.name).to eq("New Name")
      end

      it "redirects to the updated product" do
        put :update, params: { id: product.id, product: { name: "New Name" } }
        expect(response).to redirect_to(product)
      end
    end

    context "with invalid attributes" do
      it "does not update the product" do
        put :update, params: { id: product.id, product: { name: nil } }
        product.reload
        expect(product.name).to_not be_nil
      end

      it "renders the edit template with unprocessable_entity status" do
        put :update, params: { id: product.id, product: { name: nil } }
        expect(response).to render_template(:edit)
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe "DELETE #destroy" do
    let!(:product) { create(:product) }

    it "destroys the product" do
      expect {
        delete :destroy, params: { id: product.id }
      }.to change(Product, :count).by(-1)
    end

    it "redirects to the root_url" do
      delete :destroy, params: { id: product.id }
      expect(response).to redirect_to(root_url)
    end
  end

  describe "POST add_to_cart" do
    context "when the product is not already in the cart" do
      it "adds the product to the cart" do
        session[:cart] = []
        post :add_to_cart, params: { id: product.id, size: '8' }
        expect(session[:cart]).to eq([product.id])
      end

      it "redirects to products_path" do
        post :add_to_cart, params: { id: product.id, size: '8' }
        expect(response).to redirect_to(products_path)
      end
    end

    context "when the product is already in the cart" do
      it "does not add the product to the cart again" do
        session[:cart] = [{ id: product.id, size: '8' }]
        post :add_to_cart, params: { id: product.id, size: '8' }
        expect(session[:cart]).to eq([{ id: product.id, size: '8' }])
      end

      it "redirects to products_path" do
        session[:cart] = [{ id: product.id, size: '8' }]
        post :add_to_cart, params: { id: product.id, size: '8' }
        expect(response).to redirect_to(products_path)
      end
    end
  end

  describe "POST remove_from_cart" do
    it "removes the product from the cart" do
      session[:cart] = [product.id]
      post :remove_from_cart, params: { id: product.id }
      expect(session[:cart]).to be_empty
    end

    it "redirects to products_path" do
      post :remove_from_cart, params: { id: product.id }
      expect(response).to redirect_to(products_path)
    end
  end

end
