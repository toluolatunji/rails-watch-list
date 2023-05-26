class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :movie, uniqueness: { scope: :list, message: 'Bookmark already exist for this movie & list pair' }
  validates :comment, length: { minimum: 6 }
end
