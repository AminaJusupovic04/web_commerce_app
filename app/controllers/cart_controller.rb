class CartController < ApplicationController
  def create
    # Retrieve the product ID from the params
    product_id = params[:product_id]
    
    
    session[:cart] ||= []
    session[:cart] << product_id
    
    # Redirect to the checkout page
    redirect_to checkout_path
  end
end



