class Vinyl < ApplicationRecord
  belongs_to :genre
  belongs_to :artist
end
