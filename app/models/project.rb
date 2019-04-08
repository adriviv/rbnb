class Project < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :image, presence: true
  validates :category, presence: true
  validates :rewards, presence: true
  validates :amount_objective, presence: true

  belongs_to :user
  has_many :pledges
end
