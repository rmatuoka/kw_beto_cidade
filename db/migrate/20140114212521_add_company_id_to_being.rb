class AddCompanyIdToBeing < ActiveRecord::Migration
  def self.up
    add_column :beings, :company_id, :integer
  end

  def self.down
    remove_column :beings, :company_id
  end
end
