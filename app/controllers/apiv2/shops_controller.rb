class Apiv2::ShopsController < ApplicationController
  before_action :find_shop, only: [:show, :update, :destroy]

  def index
    @shops = Shop.all
    render json: @shops
  end

  def show
    render json: @shop
  end

  def create
    @shop = Shop.new(shop_params)
    if @shop.save
      render json: @shop
    else
      render json: {error: 'Error creating shop'}
    end
  end

  def update
    if @shop.update(shop_params)
      render json: @shop
    else
      render json: {errors: 'Error updating shop'}
    end
  end

  def destroy
    if @shop.destroy
      render json: @shops
    else
      render json: {error: 'Error deleting shop'}
    end
  end

  private

  def find_shop
    @shop = Shop.find(params[:id])
  end

  def shop_params
    params.require(:shop).permit(:name, :industry, :user_id)
  end
end
