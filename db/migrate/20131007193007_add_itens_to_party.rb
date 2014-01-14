class AddItensToParty < ActiveRecord::Migration
  def self.up
    add_column :parties, :active, :boolean, :default => 1
  end

  def self.down
    remove_column :parties, :active
  end
end
