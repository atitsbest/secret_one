class CreateUsersAssignedToProjects < ActiveRecord::Migration
  def self.up
    create_table :users_assigned_to_projects, :id => false do |t|
      t.integer :project_id
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :users_assigned_to_projects
  end
end
