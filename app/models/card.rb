class Card < ApplicationRecord
	has_many :tasks, dependent: :destroy
  has_many :referees, foreign_key: "referee_id", class_name: "Referral", dependent: :destroy
  has_many :referrers, foreign_key: "referrer_id", class_name: "Referral", dependent: :destroy

  validates :title, length: { maximum: 288 }
  
  def completed_tasks
    tasks.where("tasks.completed = ?", true)
  end 
end
