class ProductSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :quantity, :price, :description, :user, :shop
end
