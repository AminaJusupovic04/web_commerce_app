class CommentsController < ApplicationController
    def create
      @product = Product.find(params[:product_id])
      @comment = @product.comments.build(comment_params)
      if @comment.save
        redirect_to @product, notice: "Comment was successfully created."
      else
        render 'products/show'
      end
    end
  
    def destroy
      @comment = Comment.find(params[:id])
      @comment.destroy
      redirect_to product_path(params[:product_id]), notice: "Comment was successfully deleted."
    end
  
    private
  
    def comment_params
      params.require(:comment).permit(:body)
    end
  end
  