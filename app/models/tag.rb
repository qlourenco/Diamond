class Tag < ApplicationRecord
  has_many :vinyl_tags
  has_many :user_vinyls, through: :vinyl_tags

  validates :title, presence: true
end
