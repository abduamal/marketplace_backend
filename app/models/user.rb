class User < ApplicationRecord
  has_many :shops
  has_many :products, through: :shops
end
