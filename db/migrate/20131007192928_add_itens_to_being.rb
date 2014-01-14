class AddItensToBeing < ActiveRecord::Migration
  def self.up
    add_column :beings, :active, :boolean, :default => 1
  end

  def self.down
    remove_column :beings, :active
  end
end
