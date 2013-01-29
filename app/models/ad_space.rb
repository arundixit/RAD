class AdSpace < ActiveRecord::Base
  attr_accessible :breadth, :length, :position
  has_many :ad_bookings
end
