class Interaction < ApplicationRecord
  belongs_to :customer

  enum :type => { call: 0, email: 1, meeting: 2, other: 3 }
end
