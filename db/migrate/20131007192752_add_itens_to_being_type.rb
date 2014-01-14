class AddItensToBeingType < ActiveRecord::Migration
  def self.up
    add_column :being_types, :active, :boolean, :default => 1
  end

  def self.down
    remove_column :being_types, :active
  end
end
