class User < ApplicationRecord
  has_one :place, dependent: :destroy
  has_one_attached :photo
  has_many :visits
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, presence: true
  validates :last_name, presence: true

  def owner_of?(place) # current_user.owner_of?(place)
    place.user == self
  end

  def pending_questions
    self.place.questions.select { |question| question.answer.nil? }
  end
end
