class CartController < ApplicationController
  def show
    @render_cart = false
  end

  def add
    @product = Product.find_by(id: params[:id])
    quantity = params[:quantity].to_i  # Fetch quantity from form submission
    current_orderable = @cart.orderables.find_by(product_id: @product.id)
    if current_orderable && quantity > 0
      current_orderable.update(quantity: quantity)  
    elsif quantity <= 0
      current_orderable.destroy if current_orderable  
    else
      @cart.orderables.create(product: @product, quantity: quantity)  
    end
  end

  def remove
    Orderable.find_by(id: params[:id]).destroy
  end
end
