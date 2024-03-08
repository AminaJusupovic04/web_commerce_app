class LikesController < ApplicationController
        before_action :find_product
        
        def create
          @product.likes.create
          redirect_to product_path(@product)
        end
      
        private
      
        def find_product
          @product = Product.find(params[:product_id])
        end
      end
      
