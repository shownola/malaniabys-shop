class CategoriesController < ApplicationController
  before_action :find_category, only: [:show, :edit, :update, :destroy]

  def index
    @categories = Category.all.order('created_at desc')
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      flash[:success] = 'You have successfully create a new category'
      redirect_to category_path(@category)
    else
      render 'new'
    end
  end

  def show
  end

    def edit
    end

    def update
      if @category.save
        flash[:success] = 'You have updated successfully'
        redirect_to category_path(@category)
      else
        render 'edit'
      end
    end

    def destroy
      @category.destroy
      redirect_to categories_path, notice: 'You have deleted this product'
    end



    private

      def category_params
        params.require(:category).permit(:title)
      end

      def find_category
        @category = Category.find(params[:id])
      end


end
