
class Subject < ActiveRecord::Base
	has_one :page

	#scope :visible, lambda {where (:visible => true)}
	#scope :invisible, lambda {where (:visible => false)}
	#scope :sorted, lambda {order("subjects.positions ASC")}
	#scope :newest_first, lambda{"subjects.created_at DESC"}
	#scope :search, lambda{|query| where ("name LIKE ?","%#{query}%")}
end
