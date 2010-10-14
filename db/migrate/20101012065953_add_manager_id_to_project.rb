class AddManagerIdToProject < ActiveRecord::Migration
  def self.up
    add_column :projects, :manager_id, :int
  end

  def self.down
    remove_column :projects, :manager_id
  end
end
