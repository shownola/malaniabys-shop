class SuppliersController < ApplicationController
  before_action :find_supplier, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  def index
    @suppliers = Supplier.all.order('created_at desc')
  end

  def new
    @supplier = Supplier.new
  end

  def create
    @supplier = Supplier.new(supplier_params)

    if @supplier.save
      flash[:success] = 'You have successfully created a new Supplier'
      redirect_to supplier_path(@supplier)
    else
      flash[:notice] = 'There was an error creating a new Supplier'
      render 'new'
    end
  end

  def show
    @supplier = Supplier.find(params[:id])
    # @supplier_products = @supplier.products.paginate(page: params[:page], per_page: 5)
  end

  def edit
  end

  def update

  end




  private

    def find_supplier
      @supplier = Supplier.find(params[:id])
    end

    def supplier_params
      params.require(:supplier).permit(:company_name, :contact_name, :contact_title, :address, :city, :state, :postal_code, :country, :phone, :fax, :phone_other, :email, :url)
    end

end
