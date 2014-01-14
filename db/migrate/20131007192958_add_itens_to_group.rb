class AddItensToGroup < ActiveRecord::Migration
  def self.up
    add_column :groups, :active, :boolean, :default => 1
  end

  def self.down
    remove_column :groups, :active
  end
end
