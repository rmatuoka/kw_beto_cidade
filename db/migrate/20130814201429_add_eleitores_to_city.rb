class AddEleitoresToCity < ActiveRecord::Migration
  def self.up
    add_column :cities, :eleitores, :integer
  end

  def self.down
    remove_column :cities, :eleitores
  end
end
