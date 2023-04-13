class ApplicationController < ActionController::Base
  before_action :initialize_session
  before_action :load_cart
  include Pagy::Backend

  private

  def authenticate_admin!
    redirect_to new_user_session_path unless current_user && current_user.admin?
  end

  def initialize_session
    session[:cart] ||= [] # empty cart = empty array
  end

  # def load_cart
  #   @cart = Product.find(session[:cart])
  # end
  def load_cart
    @cart = Product.where(id: session[:cart])
  end
end
