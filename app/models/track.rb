class Track < ApplicationRecord
  belongs_to :vinyl
  # TODO: Check sample format (info ? url ?) si oui rename sample_url
end
