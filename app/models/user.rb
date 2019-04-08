class User < ApplicationRecord

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :address, presence: true
  validates :credit_card_number, presence: true
  validates :credit_card_number, uniqueness: true


  has_many :projects, dependent: :destroy
  has_many :pledges
end
