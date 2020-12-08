class Question < ApplicationRecord
  belongs_to :user
  belongs_to :place

  has_one :answer

  validates :content, presence: true
end
