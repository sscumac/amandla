class Place < ApplicationRecord
  belongs_to :user
  acts_as_taggable_on :tags # or whatever you would like to call your tag list.

  # has_many_attached :photos
  delegate :reviews, to: :visit
  has_many :visits, dependent: :destroy
  has_many :wishlist_items
  has_many :questions, dependent: :destroy
  has_many :answers, through: :questions, dependent: :destroy

  # geocoded_by :address

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  validates :story, presence: true, length: { minimum: 75 }

  # list of tags with method
  
  def self.all_tags
    [
    "veggie",
    "LGBT-friendly",
    "woman owened",
    "local products",
    "fair trade",
    "fully organic",
    "green energy"
    ]
  end

  # list of categories with method
  def self.all_cats
    [
    "Restaurant",
    "Bar",
    "Cafe",
    "Clothing Store",
    "Nightclub",
    "Art Gallery"
    ]
  end
end
