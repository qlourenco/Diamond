class UserVinyl < ApplicationRecord
  belongs_to :vinyl
  belongs_to :user

  has_many :vinyl_tags
  has_many :tags, through: :vinyl_tags, dependent: :destroy
end
