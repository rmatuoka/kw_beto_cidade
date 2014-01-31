class AddNeighborhoodToBeing < ActiveRecord::Migration
  def self.up
    add_column :beings, :neighborhood, :string
  end

  def self.down
    remove_column :beings, :neighborhood
  end
end
