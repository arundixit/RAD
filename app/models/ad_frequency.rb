class AdFrequency < ActiveRecord::Base
  attr_accessible :name
has_many :ad_rates
end
