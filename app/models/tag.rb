class Tag < ApplicationRecord
  has_many :vinyl_tags
  has_many :user_vinyls, through: :vinyl_tags

  TAGS = ["1950", "1960", "1970", "1980", "1990", "2000", "2010", "2020", "Birthdays", "Summer", "Winter", "Spring", "Autumn", "Favorites", "Travel", "Calm", "Party", "Family", "Bad mood", "Happy", "Other", "To sell", "Dj", "Dance", "Sing", "Beats", "Live", "Band", "Girl", "Top", "Hit", "Popular", "Rave", "Bass", "Drum", "Cool", "French", "German", "Hispanic", "English", "US", "Russian", "Oriental", "Asian", "African", "European", "American", "Tribal", "Chill", "Hard", "Sport", "Nostalgia", "Childhood", "Rain", "Training", "Studying"]

  validates :title, inclusion: { in: TAGS }, presence: true
end
