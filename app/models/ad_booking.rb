class AdBooking < ActiveRecord::Base
  attr_accessible :ad_id, :ad_rate_id, :ad_space_id, :amount, :from_date, :ispaid, :to_date
  has_many :ad_spaces
end
