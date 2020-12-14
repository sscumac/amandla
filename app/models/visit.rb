class Visit < ApplicationRecord
  belongs_to :user
  belongs_to :place

  has_many :reviews, dependent: :destroy

  def average_reviews
    total_reviews = 0
    total_reviews += self.reviews.count
    self.reviews.sum(:rating) / total_reviews
  end
end
