class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :profile, dependent: :destroy
  has_one :subscription, dependent: :destroy

  before_create :build_profile
  before_create :build_subscription
  accepts_nested_attributes_for :profile
  accepts_nested_attributes_for :subscription
end
