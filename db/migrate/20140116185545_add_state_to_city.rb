class AddStateToCity < ActiveRecord::Migration
  def self.up
    add_column :cities, :state, :string
  end

  def self.down
    remove_column :cities, :state
  end
end
