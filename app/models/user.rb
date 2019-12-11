class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: [:facebook]

  has_many :organization_users, dependent: :destroy
  has_many :organizations, through: :organization_users
  has_one :subscription, as: :subscriber
  has_many :projects, as: :creator, dependent: :destroy
  has_many :boards, through: :projects
  has_many :board_members, class_name: 'BoardMember',foreign_key: :member_id, dependent: :destroy
  has_many :org_projects, through: :board_members, source: "project"
  has_many :org_boards, through: :board_members, source: "board"
  has_many :orders, as: :customer, dependent: :destroy
  
  after_create :set_plan!

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.provider = auth.provider
      user.uid = auth.uid
    end
  end

  def set_plan!
    plan = Plan.individual.active.last
    self.create_subscription(plan_id: plan.id)
  end 
end
