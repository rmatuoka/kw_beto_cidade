class AddZipCodeToBeing < ActiveRecord::Migration
  def self.up
    add_column :beings, :zip_code, :string
  end

  def self.down
    remove_column :beings, :zip_code
  end
end
