class Order < ApplicationRecord
	belongs_to :customer, polymorphic: true
  enum status: {paid: "paid", pending_payment: "pending_payment"}
end
