class CreateDegreeRelationships < ActiveRecord::Migration
  def self.up
    create_table :degree_relationships do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :degree_relationships
  end
end
