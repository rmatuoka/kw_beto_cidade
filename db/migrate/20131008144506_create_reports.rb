class CreateReports < ActiveRecord::Migration
  def self.up
    create_table :reports do |t|
      t.integer :user_id
      t.string :being_types_ids
      t.date :date_of_birth_start
      t.date :date_of_birth_end
      t.string :schooling_ids
      t.string :city_ids
      t.string :party_ids
      t.string :group_ids
      t.date :date_start
      t.date :date_end

      t.timestamps
    end
  end

  def self.down
    drop_table :reports
  end
end
