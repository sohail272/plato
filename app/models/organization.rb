class Organization < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :organization_users, dependent: :destroy
  has_many :users, through: :organization_users
  has_one :subscription, as: :subscriber
  has_many :projects, as: :creator, dependent: :destroy
  has_many :board_members, through: :projects, dependent: :destroy
  has_many :orders, as: :customer, dependent: :destroy

  def additional_users
    users_count = users.count 
    additional_users = 0
    licenses_count = subscription.plan.licenses
    if users_count > licenses_count
      additional_users = users_count - licenses_count
    end
    return additional_users
  end 
end
