class ShopSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :industry, :user
end
