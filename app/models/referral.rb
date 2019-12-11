class Referral < ApplicationRecord
	belongs_to :referee, class_name: "Card"
  belongs_to :referrer, class_name: "Card"
end
