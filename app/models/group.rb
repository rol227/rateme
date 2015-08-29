class Group < ActiveRecord::Base
	has_many :images, :dependent => :destroy
	
	accepts_nested_attributes_for :images, :reject_if => lambda { |a| a[:pic].blank? }, :allow_destroy => true
end
