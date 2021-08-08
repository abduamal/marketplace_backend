class UserSerializer < ActiveModel::Serializer
  attributes :first_name, :last_name, :bio, :image, :email, :password_digest
  has_many :shops
  has_many :products
end
