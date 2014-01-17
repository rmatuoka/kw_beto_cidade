class AddCityWorkIdToBeing < ActiveRecord::Migration
  def self.up
    add_column :beings, :city_work_id, :integer
  end

  def self.down
    remove_column :beings, :city_work_id
  end
end
