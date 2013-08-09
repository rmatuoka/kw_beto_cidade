class AddCityIdToEntity < ActiveRecord::Migration
  def self.up
    add_column :entities, :city_id, :integer
  end

  def self.down
    remove_column :entities, :city_id
  end
end
