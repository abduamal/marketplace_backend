class ProductSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :quantity, :price, :description, :shop_id
  belongs_to :shop
end
