class User < ApplicationRecord
   acts_as_token_authenticatable
   # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :address, presence: true
  validates :credit_card_number, presence: true
  validates :credit_card_number, presence: true


  has_many :projects, dependent: :destroy
  has_many :pledges
end
