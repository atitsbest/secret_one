class Project < ActiveRecord::Base
	attr_accessible :name, :manager_id, :customer_id, :member_ids

	# Associations
	belongs_to :manager, :class_name => 'User'
	belongs_to :customer
	has_many :tasks
	has_and_belongs_to_many :members, :class_name => 'User',
																	  :join_table => 'users_assigned_to_projects'

	# Validations
	validates_presence_of :name, :manager_id, :customer_id
	validates_uniqueness_of :name	
end
