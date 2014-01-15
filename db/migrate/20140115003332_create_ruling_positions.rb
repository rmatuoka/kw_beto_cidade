class CreateRulingPositions < ActiveRecord::Migration
  def self.up
    create_table :ruling_positions do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :ruling_positions
  end
end
