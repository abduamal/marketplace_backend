class ShopsController < ApplicationController

  def index
    shops = Shop.all
    render json: ShopSerializer.new(shops)
  end

  def show
    shop = Shop.find(params[:id])
    render json: ShopSerializer.new(shop)
  end

  def create
    shop = Shop.new(shop_params)
    if shop.save
      render json: ShopSerializer.new(shop), status: :accepted
    else
      render json: {errors: shop.errors.full_messages}, status: :unprocessible_entity
    end
  end

  def update
    shop = Shop.find(params[:id])
    if shop.update(shop_params)
      render json: ShopSerializer.new(shop), status: :accepted
    else
      render json: {errors: shop.errors.full_messages}, status: :unprocessible_entity
    end
  end

  def destroy
    shop = Shop.find(params[:id])
    if shop.destroy
      render json: ShopSerializer.new(shops)
    else
      render json: {errors: shop.errors.full_messages}, status: :unprocessible_entity
    end
  end

  private

  def shop_params
    params.require(:shop).permit(:name, :industry, :user_id)
  end
end
