class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :comment, length: { minimum: 6, message: "Heyy too short!" }
  validates :movie_id, uniqueness: { scope: :list_id, message: "It is already in the list" }
end
