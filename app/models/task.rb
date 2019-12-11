class Task < ApplicationRecord
	belongs_to :card
  validates :description, length: { maximum: 288 }
end
