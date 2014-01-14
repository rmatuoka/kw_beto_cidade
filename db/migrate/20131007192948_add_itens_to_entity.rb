class AddItensToEntity < ActiveRecord::Migration
  def self.up
    add_column :entities, :active, :boolean, :default => 1
  end

  def self.down
    remove_column :entities, :active
  end
end
