class Event < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :categories

  validates :name, presence: true
  validates :description, presence: true, length: { maximum: 500 }
  # validates :end_date, presence: true
  # validates :start_date, presence: true
  validate :date_valid?

  def date_valid?

    # result = starts_at == '1'
    # puts "halloooooo " + result.to_s
    # return result
    days_difference =  (starts_at - ends_at).to_i
    if days_difference < 1
      return false
    else
      errors.add(:ends_at, "Must be after today")
    end
  end

#MAKE A METHOD 
  # private
  #
  # def ends_at
  #
  # end

  #ADD VALIDATION THAT BOTH DATES ARE ENTERED AND END DATE IS AT LEAST ONE DAY AFTER THE START DATE

  # validates :start_date, date: { before: :end_date }

  # validates :start_date,
  # date: { after: Proc.new { Date.today }, message: 'must be after today' },
  # on: :create

end
