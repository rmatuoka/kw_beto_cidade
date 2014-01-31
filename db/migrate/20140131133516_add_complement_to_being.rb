class AddComplementToBeing < ActiveRecord::Migration
  def self.up
    add_column :beings, :complement, :string
  end

  def self.down
    remove_column :beings, :complement
  end
end
