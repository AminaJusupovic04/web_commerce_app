class CartController < ApplicationController
  before_action :initialize_cart

  def show
    @render_cart = true
  end

  def add
    @product = Product.find_by(id: params[:id])
    quantity = params[:quantity].to_i
    current_orderable = @cart.orderables.find_by(product_id: @product.id)
    if current_orderable && quantity > 0
      current_orderable.update(quantity: current_orderable.quantity + quantity)
    elsif quantity > 0
      @cart.orderables.create(product: @product, quantity: quantity)
    end
    redirect_to cart_path
  end

  def remove
    Orderable.find_by(id: params[:id]).destroy
    redirect_to cart_path
  end
end

