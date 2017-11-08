class Event < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :categories

  validates :name, presence: true
  validates :description, presence: true, length: { maximum: 500 }

  # validate :date_valid?
  #
  # def date_valid?
  #
  #   days_difference =  (starts_at - ends_at).to_i
  #   if days_difference < 1
  #     return false
  #   else
  #     errors.add(:ends_at, "Must be after today")
  #   end
  # end
#OR:
#   validate :you_are_planning_the_past
#
#    def you_are_planning_the_past
#       if startdate_before_enddate?
#         true
#       else
#         errors.add(:ends_at, "End date must be at least a day later than start date.")
#       end
#     end
#
#   def startdate_before_enddate?
#       ends_at - starts_at >= 1
#   end
# end

    def bargain?
      price < 30
    end

    def self.order_by_price
      order(:price)
    end
end
