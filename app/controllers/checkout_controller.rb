class CheckoutController < ApplicationController
  def show
    # Retrieve cart items from the session or database
    @cart_items = session[:cart] || []
    
    # Use the cart items to calculate the total price
    @total_price = calculate_total_price(@cart_items)
  end

  private

  def calculate_total_price(cart_items)
    
  end
end

