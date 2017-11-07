class Event < ApplicationRecord
  belongs_to :user


  validates :name, presence: true
  validates :description, presence: true, length: { maximum: 500 }
  # validates :end_date, presence: true
  # validates :start_date, presence: true


  #ADD VALIDATION THAT BOTH DATES ARE ENTERED AND END DATE IS AT LEAST ONE DAY AFTER THE START DATE

  # validates :start_date, date: { before: :end_date }

  # validates :start_date,
  # date: { after: Proc.new { Date.today }, message: 'must be after today' },
  # on: :create



end
