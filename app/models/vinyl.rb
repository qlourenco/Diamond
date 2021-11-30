class Vinyl < ApplicationRecord
  belongs_to :genre
  belongs_to :artist

  has_many :tracks
  has_many :favorites
  has_many :user_vinyls

  validates :title, presence: true
  validates :description, presence: true
  validates :release_date, presence: true
  validates :discogs_id, presence: true
  validates :stars, presence: true, numericality: { only_float: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
end
