class Place < ApplicationRecord
  belongs_to :user

  # WISHLIST... Does it belong to a wishlist_items oir has many wishlist_items???????

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
end
