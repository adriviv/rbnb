class Pledge < ApplicationRecord
  validates :amount, presence: true

  belongs_to :user
  belongs_to :project
end
