class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  CATEGORY = %w(chinese italian japanese french belgian)
  validates :category, acceptance: { accept: CATEGORY }
end
