class AddAlltoCity < ActiveRecord::Migration
  def self.up
    add_column :cities, :endprefeitura, :string
    add_column :cities, :endcamara, :string
    add_column :cities, :fundacao, :date 
    add_column :cities, :nomepadroeiro, :string
    add_column :cities, :eventopadroeiro, :date
    add_column :cities, :eventoscidade, :text 
    add_column :cities, :prefeito, :string 
    add_column :cities, :viceprefeito, :string 
    add_column :cities, :vereadores, :text 
    add_column :cities, :presidentepv, :string 
    add_column :cities, :liderancas, :text
    add_column :cities, :saneamento, :string
    add_column :cities, :quantvotosdept, :integer
    add_column :cities, :cincofederais, :text 
    add_column :cities, :cincoestaduais, :text 
    add_column :cities, :eleitores, :integer 
    add_column :cities, :regadministrativa, :string
    add_column :cities, :vocacaoturistica, :string
    add_column :cities, :entirelacionamento, :string
    add_column :cities, :histatuacao, :text 
    add_column :cities, :entianimal, :text 
    add_column :cities, :verdeazul, :boolean
    add_column :cities, :estrutmeioambiente, :text
    add_column :cities, :estrutturismo, :text
    add_column :cities, :estrutcamara, :text 
    add_column :cities, :estrutbemanimal, :text
    

  end

  def self.down
    add_column :cities, :endprefeitura
    add_column :cities, :endcamara
    add_column :cities, :fundacao 
    add_column :cities, :nomepadroeiro
    add_column :cities, :eventopadroeiro
    add_column :cities, :eventoscidade 
    add_column :cities, :prefeito
    add_column :cities, :viceprefeito
    add_column :cities, :vereadores
    add_column :cities, :presidentepv
    add_column :cities, :liderancas
    add_column :cities, :saneamento
    add_column :cities, :quantvotosdept
    add_column :cities, :cincofederais
    add_column :cities, :cincoestaduais
    add_column :cities, :eleitores 
    add_column :cities, :regadministrativa
    add_column :cities, :vocacaoturistica
    add_column :cities, :entirelacionamento
    add_column :cities, :histatuacao
    add_column :cities, :entianimal
    add_column :cities, :verdeazul
    add_column :cities, :estrutmeioambiente
    add_column :cities, :estrutturismo
    add_column :cities, :estrutcamara 
    add_column :cities, :estrutbemanimal
  end
end