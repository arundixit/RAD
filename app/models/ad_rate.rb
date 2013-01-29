class AdRate < ActiveRecord::Base
  attr_accessible :ad_space_id, :frequency_id, :rate
has_many :ad_bookings
end
