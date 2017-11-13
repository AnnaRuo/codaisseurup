class Registration < ApplicationRecord
  belongs_to :event
  belongs_to :user

  def set_total_price
    self.price = event.price
    total_days = (ends_at.to_date - starts_at.to_date).to_i
    self.total = price * total_days
  end
end
