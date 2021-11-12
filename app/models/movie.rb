class Movie < ApplicationRecord
  has_many :bookmarks
  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true

  before_destroy(:check_if_in_list)

  def check_if_in_list
    raise ActiveRecord::InvalidForeignKey unless bookmarks.empty?
  end
end
