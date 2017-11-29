class Person < ApplicationRecord
  # belongs_to :companies
  belongs_to :user
  validates :user, presence: true
end
