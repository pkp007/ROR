class Page < ActiveRecord::Base

	belongs_to :subjet

	scope :visible, lambda {where(:visible =>false)}
end
