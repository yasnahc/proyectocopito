class ProductsController < ApplicationController
before_action :set_product, only: [:destroy, :update, :show, :edit]

  def index
    @product = Product.all 
  end

  def create
    @product = Product.new(product_params).save
    redirect_to products_path
  end
 
  def destroy
    @product.destroy
    redirect_to products_path
  end

  def update
    @product.update(product_params)
    redirect_to product_path(@product)
  end

  def show
  end

  def new
    @product = Product.new
  end

  def edit
  end

  private

  def product_params
    params.require(:product).permit(:description, :departament, :cost, :sale, :amount) 
  end

  def set_product
    @product = Product.find(params[:id])
  end

end
