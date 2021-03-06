class Group < ActiveRecord::Base
	has_many :images, :dependent => :destroy
	belongs_to :user
	
	accepts_nested_attributes_for :images, :reject_if => lambda { |a| a[:pic].blank? }, :allow_destroy => true
end
