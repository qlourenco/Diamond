class VinylTag < ApplicationRecord
  belongs_to :tag
  belongs_to :user_vinyl

  validates :tag, uniqueness: true
end
