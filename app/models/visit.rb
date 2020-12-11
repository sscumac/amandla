class Visit < ApplicationRecord
  belongs_to :user
  belongs_to :place

  has_many :reviews, dependent: :destroy
end
