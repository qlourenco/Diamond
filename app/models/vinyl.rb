class Vinyl < ApplicationRecord
  belongs_to :genres
  belongs_to :artists
end
