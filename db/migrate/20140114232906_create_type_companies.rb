class CreateTypeCompanies < ActiveRecord::Migration
  def self.up
    create_table :type_companies do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :type_companies
  end
end
