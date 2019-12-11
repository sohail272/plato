class Subscription < ApplicationRecord
	belongs_to :plan
  belongs_to :subscriber, polymorphic: true
  before_save :set_start_date!


  def set_start_date!
    self.start_date = DateTime.now
  end
end
