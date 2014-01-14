class AddItensToSchooling < ActiveRecord::Migration
  def self.up
    add_column :schoolings, :active, :boolean, :default => 1
  end

  def self.down
    remove_column :schoolings, :active
  end
end
