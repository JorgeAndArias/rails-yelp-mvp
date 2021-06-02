class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, numericality: { only_integer: true }
  RATING = (0..5).to_a
  validates :rating, acceptance: { accept: RATING }
end
