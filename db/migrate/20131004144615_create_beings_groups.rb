class CreateBeingsGroups < ActiveRecord::Migration
  def self.up
    create_table :beings_groups do |t|
      t.references :being, :group
      t.timestamps
    end
  end

  def self.down
    drop_table :beings_groups
  end
end
