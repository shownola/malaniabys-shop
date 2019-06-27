class ProductsController < ApplicationController
  before_action :find_product, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @products = Product.all.order('created_at desc')
  end

  def new
    @product = Product.new
    # @product = current_user.product.build
  end


  def create
    @product = Product.new(product_params)
    # @product = current_user.products.build(product_params)
    if @product.save
      flash[:success] = 'You have successfully created product'
      redirect_to product_path(@product)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @product.update(product_params)
      flash[:success] = 'You have successfully updated this product'
      redirect_to product_path(@product)
    else
      flash[:danger] = 'There was an error, please try again'
      render :edit
    end
  end

  def destroy
    @product.destroy
    redirect_to products_path, notice: 'You have deleted this product'
  end

  private

  def product_params
    params.require(:product).permit(:title, :description, :image, :sku, :price, :cost)
  end

  def find_product
    @product = Product.find(params[:id])
  end


end
