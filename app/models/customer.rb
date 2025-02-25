class Customer < ApplicationRecord
  has_many :contacts
  has_many :opportunities
  has_many :interactions

  enum status: { active: 0, inactive: 1 }
end
