class BoardMember < ApplicationRecord
	belongs_to :project
  belongs_to :user, class_name: 'User',foreign_key: :member_id
  belongs_to :board
end
