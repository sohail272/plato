class Project < ApplicationRecord
	belongs_to :creator, polymorphic: true
  has_many :boards, dependent: :destroy
  has_many :board_members, dependent: :destroy
end
