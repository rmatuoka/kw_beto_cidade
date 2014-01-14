class AddItensToCity < ActiveRecord::Migration
  def self.up
    add_column :cities, :active, :boolean, :default => 1
  end

  def self.down
    remove_column :cities, :active
  end
end
