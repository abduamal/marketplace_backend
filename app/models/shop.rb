class Shop < ApplicationRecord
  belongs_to :user, optional: true
  has_many :products

  validates_inclusion_of :industry, :in => ['Food', 'Retail', 'Entertainment', 'Health', 'Technology', 'Servive', 'Other']
end
