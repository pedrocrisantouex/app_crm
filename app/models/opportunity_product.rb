class OpportunityProduct < ApplicationRecord
  belongs_to :opportunity
  belongs_to :product
end
