require 'custom_logger'

class Entity < ActiveRecord::Base
  belongs_to :city
  scoped_search :on => [:nome, :presidente, :cnpj]
  #attr_accessible :nome, :fundacao, :interligada, :endereco, :telefone, :email, :site, :cnpj, :segmento, :presidente, :contato, :utilpublica, :histrelacionamento, :sedepropria, :estrutura, :condicloes, :temveiculos, :quantveiculos, :condveiculos, :verbaestadual, :verbaorgao, :cadastentestaduais, :pencadin, :prosocial, :proativoinativo
  
  before_save :log_user_action
end
