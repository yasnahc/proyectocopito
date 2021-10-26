class ProductsController < ApplicationController
before_action :authenticate_user!, only: [:show]
before_action :set_product, only: [:destroy, :update, :show, :edit, :supplier]

  def index
    @product = policy_scope(Product)
  end

  def create
    @product = Product.new(product_params).save
    authorize @product
    if product.save
      redirect_to products_path(product)
    end
  end
 
  def destroy
    @product.destroy
    redirect_to products_path
    authorize @product
  end

  def update
    @product.update(product_params)
    redirect_to product_path(@product)
  end

  def show
  end

  def new
    @product = Product.new
    authorize @product
  end

  def edit
  end

  def top
    @product = Product.where(sale: 1000..2000)
  end

  def supplier    
  end

  private

  def product_params
    params.require(:product).permit(:description, :departament, :cost, :sale, :amount) 
  end

  def set_product
    @product = Product.find(params[:id])
    authorize @product
  end

end
