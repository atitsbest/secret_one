class Task < ActiveRecord::Base
	attr_accessible :project_id, :reported_by_id, :kind, :area, :description, 
									:priority, :state, :assigned_to_id
								
	# Associations:
	belongs_to :project
	belongs_to :reported_by, :class_name => 'User'
	belongs_to :assigned_to, :class_name => 'User'
	
	# Validations:
	validates_presence_of :project_id,
												:reported_by_id, 
												:assigned_to_id,
												:description,
												:state
	
end
