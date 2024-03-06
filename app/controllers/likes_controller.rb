class LikesController < ApplicationController
        def create
          @product = Product.find(params[:product_id])
          redirect_to @product, notice: 'Product was successfully liked.'
        end
      end
      