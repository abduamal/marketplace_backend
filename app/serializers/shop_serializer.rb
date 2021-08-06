class ShopSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :industry, :products
  has_many :products
end
