class Apiv2::ProductsController < ApplicationController

  before_action :set_shop
  before_action :find_product, only: [:show, :update, :destroy]

  def index
    @products = Products.all
    render json: @products
  end

  def show
    render json: @product
  end

  def create
    @product = @shop.products.new(product_params)
    if @product.save
      render json: @product
    else
      render json: {error: 'Error creating product'}
    end
  end

  def update
    if @product.update(product_params)
      render json: @product
    else
      render json: {error: 'Error updating product'}
    end
  end

  def destroy
    if @product.destroy
      render json: @products
    else
      render json: {error: 'Error deleting product'}
    end
  end

  private

  def set_shop
    @shop = Shop.find(params[:shop_id])
  end

  def find_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :price, :quantity, :user_id, :shop_id)
  end
end
