class Movie < ApplicationRecord
  has_many :bookmarks
  # before_destroy :check_bookmarks
  validates :title, presence: true
  validates :title, uniqueness: true
  validates :overview, presence: true

  # private

  # def check_bookmarks
  #   if bookmarks.count > 0
  #     # errors.add_to_base("cannot delete movies while bookmarks exist")
  #     return false
  #   end
  # end

end
