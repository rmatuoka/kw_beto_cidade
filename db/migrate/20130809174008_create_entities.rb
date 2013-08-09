class CreateEntities < ActiveRecord::Migration
  def self.up
    create_table :entities do |t|
      t.string :nome
      t.datetime :fundacao
      t.string :interligada
      t.string :endereco
      t.string :telefone
      t.string :email
      t.string :site
      t.string :cnpj
      t.string :segmento
      t.string :presidente
      t.string :contato
      t.boolean :utilpublica
      t.text :histrelacionamento
      t.boolean :sedepropria
      t.text :estrutura
      t.text :condicloes
      t.boolean :temveiculos
      t.integer :quantveiculos
      t.text :condveiculos
      t.boolean :verbaestadual
      t.text :verbaorgao
      t.text :cadastentestaduais
      t.boolean :pencadin
      t.boolean :prosocial
      t.boolean :proativoinativo
      t.timestamps
    end
  end

  def self.down
    drop_table :entities
  end
end
