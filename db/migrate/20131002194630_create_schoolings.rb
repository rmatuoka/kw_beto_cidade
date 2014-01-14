class CreateSchoolings < ActiveRecord::Migration
  def self.up
    create_table :schoolings do |t|
      t.string :name
      t.timestamps
    end
  end

  def self.down
    drop_table :schoolings
  end
end
