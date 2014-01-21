class AddBeingsAndSecretarySecretaries < ActiveRecord::Migration
  create_table :beings_secretary_secretaries do |t|
    t.references :being, :secretary_secretary
    t.timestamps
  end

  def self.down
    drop_table :beings_secretary_secretaries     
  end
end
