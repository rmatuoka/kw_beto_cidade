class CreateSecretarySecretaries < ActiveRecord::Migration
  def self.up
    create_table :secretary_secretaries do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :secretary_secretaries
  end
end
