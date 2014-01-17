class AddEmailToBeing < ActiveRecord::Migration
  def self.up
    add_column :beings, :email, :string
  end

  def self.down
    remove_column :beings, :email
  end
end
