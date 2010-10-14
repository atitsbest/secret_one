class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  
  # Associations:
  has_and_belongs_to_many :projects, :join_table => 'users_assigned_to_projects'
  
  # Handelt es sich um einen Administrator?
  def admin? 
  	self.email == 'meist@infoniqa.com'
  end
  
  # Ein interner MA?
  def intern?
  	self.email.include? '@infoniqa.com'
  end
  
  def to_s
  	self.email
  end
end
