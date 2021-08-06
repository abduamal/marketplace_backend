class Apiv2::ProductsController < ApplicationController

  before_action :set_shop
  before_action :find_product, only: [:show, :update, :destroy]

  def index
    @products = @shop.products
    render json: ProductSerializer.new(@products)
  end

  def show
    render json: ProductSerializer.new(@product)
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      render json: ProductSerializer.new(@product), status: :accepted
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessible_entity
    end
  end

  def update
    if @product.update(product_params)
      render json: ProductSerializer.new(@product), status: :accepted
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessible_entity
    end
  end

  def destroy
    if @product.destroy
      render json: ProductSerializer.new(@products)
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessible_entity
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
