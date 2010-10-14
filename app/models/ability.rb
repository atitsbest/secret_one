class Ability
	include CanCan::Ability
	
	def initialize(user)
		user ||= User.new
		
		if user.admin?
			can :manage, :all
		else
			can :read, [Customer, Task]
			can :read, Project do |project|
				project.members.include?(user)
			end
			can :update, Project do |project|
				can?(:read, project) and user.intern? 
			end
		end
	end
end
