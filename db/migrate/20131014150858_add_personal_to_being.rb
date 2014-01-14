class AddPersonalToBeing < ActiveRecord::Migration
  def self.up
    add_column :beings, :mother, :string
    add_column :beings, :cpf, :string
    add_column :beings, :rg, :string
    add_column :beings, :religion, :string
    add_column :beings, :address, :string
    add_column :beings, :number, :integer
    add_column :beings, :phone, :string
    add_column :beings, :cellphone, :string
  end

  def self.down
    remove_column :beings, :cellphone
    remove_column :beings, :phone
    remove_column :beings, :number
    remove_column :beings, :address
    remove_column :beings, :religion
    remove_column :beings, :rg
    remove_column :beings, :cpf
    remove_column :beings, :mother
  end
end
