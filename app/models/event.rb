class Event < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :categories
  has_many :photos
  has_many :registrations, dependent: :destroy
  has_many :guests, through: :registrations, source: :user

  validates :name, presence: true
  validates :description, presence: true, length: { maximum: 500 }

  validate :date_valid?

  def date_valid?
    return unless starts_at && ends_at

    days_difference = (starts_at - ends_at).to_i
    if days_difference < 1
      return false
    else
      errors.add(:ends_at, "Must be after today")
    end
  end

  def bargain?
    price < 30
  end

  def self.order_by_price
    order(:price)
  end
end
