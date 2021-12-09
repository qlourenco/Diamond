class VinylTag < ApplicationRecord
  belongs_to :tag
  belongs_to :user_vinyl

  validates :tag, uniqueness: { scope: :user_vinyl, message: "should happen once per year" }
end
