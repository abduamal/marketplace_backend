class Apiv2::ProductsController < ApplicationController

  def index
    products = Product.all
    render json: ProductSerializer.new(products)
  end

  def show
    product = Product.find(params[:id])
    render json: ProductSerializer.new(product)
  end

  def create
    product = Product.new(product_params)
    if product.save
      render json: ProductSerializer.new(product), status: :accepted
    else
      render json: {errors: product.errors.full_messages}, status: :unprocessible_entity
    end
  end

  def update
    product = Product.find(params[:id])
    if product.update(product_params)
      render json: ProductSerializer.new(product), status: :accepted
    else
      render json: {errors: product.errors.full_messages}, status: :unprocessible_entity
    end
  end

  def destroy
    product = Product.find(params[:id])
    if product.destroy
      render json: ProductSerializer.new(products)
    else
      render json: {errors: product.errors.full_messages}, status: :unprocessible_entity
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :price, :quantity, :user_id, :shop_id)
  end
end
