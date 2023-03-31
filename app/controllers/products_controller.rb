class ProductsController < ApplicationController

  def index
    @products = Product.all
    sort_by = params[:sort_by]
    case sort_by
    when 'price_low_to_high'
      @products = Product.order(price: :asc)
    when 'price_high_to_low'
      @products = Product.order(price: :desc)
    else # Newest by default
      @products = Product.order(created_at: :desc)
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to @product, notice: "Product was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to @product, notice: "Product was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to root_url, notice: "Product was successfully destroyed."
  end

  def add_to_cart
    id = params[:id].to_i
    session[:cart] << id unless session[:cart].include?(id)
    redirect_to products_path
  end

  def remove_from_cart
    id = params[:id].to_i
    session[:cart].delete(id)
    redirect_to products_path
  end

  private

  def product_params
    params.require(:product).permit(:name, :price, :price_cents, :size, :genre, :type)
  end
end
