class Opportunity < ApplicationRecord
  include AASM

  has_many :opportunity_products
  has_many :products, through: :opportunity_products
  has_one :user
  belongs_to :customer

  enum status: { open: 0, progress: 1, closed: 2 }

  aasm do
    state :open, initial: true
    state :progress
    state :closed

    event :in_progress do
      transitions from: :open, to: :progress
    end

    event :finish do
      transitions from: :progress, to: :closed
    end

    event :cancel do
      transitions from: %i[open progress], to: :closed
    end
  end
end
