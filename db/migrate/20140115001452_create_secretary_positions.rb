class CreateSecretaryPositions < ActiveRecord::Migration
  def self.up
    create_table :secretary_positions do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :secretary_positions
  end
end
