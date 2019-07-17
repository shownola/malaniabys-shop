class CommentsController < ApplicationController
  before_action :require_user

  def create
    @product = Product.find(params[:product_id])
    @comment = @product.comments.build(comment_params)
    @comment.user = current_user
    if @comment.save
      flash[:notice] = 'You have created a new comment'
      redirect_to product_path(@product)
    else
      redirect_back fallback_location: root_path
        
    end
  end

  private

    def comment_params
      params.require(:comment).permit(:description)
    end

end
