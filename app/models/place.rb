class Place < ApplicationRecord
  belongs_to :user
  acts_as_taggable_on :tags # or whatever you would like to call your tag list.

  has_one_attached :photo
  has_many_attached :photos_venue
  has_many :visits, dependent: :destroy
  has_many :reviews, through: :visits
  has_many :wishlist_items
  has_many :questions, dependent: :destroy
  has_many :answers, through: :questions, dependent: :destroy

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  validates :story, presence: true, length: { minimum: 75 }
  # validates :google_maps_url, presence: true

  # list of tags with method

  def self.all_tags
    [
    "plant-based",
    "LGBT-friendly",
    "women owned",
    "locally sourced",
    "fair trade",
    "organic",
    "vegetarian"
    ]
  end
  # list of categories with method
  def self.all_cats
    [
    "Restaurant",
    "Bar",
    "Cafe",
    "Groceries",
    "Clothing and Fabrics",
    "Beauty and Wellness"
    ]
  end

  def average_reviews
    #total_reviews = 0
    total_reviews = self.reviews.count
    return 0 if total_reviews == 0
    self.reviews.sum(:rating).to_f / total_reviews
  end

  def distance_to_place(current_lat, current_lon, place_lat, place_lon)
    Geocoder::Calculations.distance_between([current_lat, current_lon], [place_lat, place_lon])
    # Geocoder::Calculations.distance_between([47.858205, 2.294359], [40.748433, -73.985655])
  end

end
