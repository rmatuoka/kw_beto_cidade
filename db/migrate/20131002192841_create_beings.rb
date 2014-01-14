class CreateBeings < ActiveRecord::Migration
  def self.up
    create_table :beings do |t|
      t.string :name
      t.date :date_of_birth
      t.integer :schooling_id
      t.integer :city_id
      t.integer :party_id
      t.timestamps
    end
  end

  def self.down
    drop_table :beings
  end
end
