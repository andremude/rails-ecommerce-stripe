class ProductsController < ApplicationController

  def index

#     def index
#   @articles = Article.all
#   @articles = @articles.search(params[:search]) if params[:search].present?
# end

if params[:query].present?
  sql_query = "\
  name ILIKE :query\
  OR genre LIKE :query\
  "
  @products = Product.where(sql_query, query: "%#{params[:query]}%")
else
  @products = Product.all
  @products = @products.where(genre: params[:genre]) if params[:genre].present?
  @products = @products.where(type: params[:type]) if params[:type].present?
  @products = @products.where(brand: params[:brand]) if params[:brand].present?
    end

    if params[:sort_by]. present?
      sort_by = params[:sort_by]
      case sort_by
      when 'discount_product'
        @products = Product.where.not(discount: nil)
      when 'price_low_to_high'
        @products = @products.order(price: :asc)
      when 'price_high_to_low'
        @products = @products.order(price: :desc)
      when 'newest_arrivals'
        @products = Product.order(created_at: :desc).limit(3)
      else # Newest by default
        @products = @products.order(created_at: :desc)
      end
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
    params.require(:product).permit(:name, :brand, :price, :price_cents, :size, :genre, :type, :discount)
  end
end
