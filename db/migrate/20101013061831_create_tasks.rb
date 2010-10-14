class CreateTasks < ActiveRecord::Migration
  def self.up
    create_table :tasks do |t|
      t.integer :project_id
      t.integer :reported_by_id
      t.string :kind
      t.string :area
      t.text :description
      t.integer :priority
      t.string :state
      t.integer :assigned_to_id

      t.timestamps
    end
  end

  def self.down
    drop_table :tasks
  end
end
