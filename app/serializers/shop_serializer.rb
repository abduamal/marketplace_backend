class ShopSerializer < ActiveModel::Serializer
  attributes :id, :name, :industry
  has_many :products
end
