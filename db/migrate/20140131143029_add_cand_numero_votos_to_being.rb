class AddCandNumeroVotosToBeing < ActiveRecord::Migration
  def self.up
    add_column :beings, :cand_numero_votos, :string
  end

  def self.down
    remove_column :beings, :cand_numero_votos
  end
end
