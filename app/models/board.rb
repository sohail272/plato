class Board < ApplicationRecord
	belongs_to :project
  has_many :cards,dependent: :destroy
  has_many :board_members, dependent: :destroy
end
