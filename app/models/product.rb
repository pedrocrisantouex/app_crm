class Product < ApplicationRecord
  has_many :opportunity_products
  has_many :opportunities, through: :opportunity_products
end
