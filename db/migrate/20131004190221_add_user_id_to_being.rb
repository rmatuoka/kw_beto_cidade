class AddUserIdToBeing < ActiveRecord::Migration
  def self.up
    add_column :beings, :user_id, :integer
  end

  def self.down
    remove_column :beings, :user_id
  end
end
