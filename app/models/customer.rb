class Customer < ActiveRecord::Base
	attr_accessible :name
	
	# Associations:
	has_many :projects
	
	# Validations:
	validates_presence_of :name
	validates_uniqueness_of :name
end
