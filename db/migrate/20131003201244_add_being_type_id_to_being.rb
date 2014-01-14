class AddBeingTypeIdToBeing < ActiveRecord::Migration
  def self.up
    add_column :beings, :being_type_id, :integer
  end

  def self.down
    remove_column :beings, :being_type_id
  end
end
