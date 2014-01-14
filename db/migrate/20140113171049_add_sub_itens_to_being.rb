class AddSubItensToBeing < ActiveRecord::Migration
  def self.up
    #DADOS EMPRESA
    add_column :beings, :emp_nome_empresa, :string
    add_column :beings, :emp_cargo, :string
    add_column :beings, :emp_potencia_votos, :string
    add_column :beings, :emp_tipo_empresa, :string
    
    #DADOS PRFEITO
    add_column :beings, :pre_numero_votos, :string
    
    #DADOS VEREADOR
    add_column :beings, :ver_numero_votos, :string
    
    #DADOS SECRETARIO
    add_column :beings, :sec_potencia_votos, :string
    add_column :beings, :sec_primeira_divisao, :string
    add_column :beings, :sec_segunda_divisao, :string
    
    #DADOS DIRIGENTE
    add_column :beings, :dir_potencia_votos, :string
    add_column :beings, :dir_primeira_divisao, :string
    add_column :beings, :dir_segunda_divisao, :string
    
    #DADOS GERAIS
    add_column :beings, :grau_relacionamento, :string
  end

  def self.down
    remove_column :beings, :emp_nome_empresa
    remove_column :beings, :emp_cargo
    remove_column :beings, :emp_potencia_votos
    remove_column :beings, :emp_tipo_empresa
    
    #DADOS PRFEITO
    remove_column :beings, :pre_numero_votos
    
    #DADOS VEREADOR
    remove_column :beings, :ver_numero_votos
    
    #DADOS SECRETARIO
    remove_column :beings, :sec_potencia_votos
    remove_column :beings, :sec_primeira_divisao
    remove_column :beings, :sec_segunda_divisao
    
    #DADOS DIRIGENTE
    remove_column :beings, :dir_potencia_votos
    remove_column :beings, :dir_primeira_divisao
    remove_column :beings, :dir_segunda_divisao
    
    remove_column :beings, :grau_relacionamento
    
  end
end
