class Ad < ActiveRecord::Base
  attr_accessible :code_details, :expiry_date, :isapproved, :ispublished, :title, :user_id

  has_many :AdBooking
end
