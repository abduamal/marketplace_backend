class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :quantity, :price, :description, :shop_id
  belongs_to :shop
end
