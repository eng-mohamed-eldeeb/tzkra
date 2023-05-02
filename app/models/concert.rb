class Concert < ApplicationRecord
  belongs_to :singer
  belongs_to :venue
  has_many :reservations
end
