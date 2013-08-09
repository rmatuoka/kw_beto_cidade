class Entity < ActiveRecord::Base
  belongs_to :city
  #attr_accessible :nome, :fundacao, :interligada, :endereco, :telefone, :email, :site, :cnpj, :segmento, :presidente, :contato, :utilpublica, :histrelacionamento, :sedepropria, :estrutura, :condicloes, :temveiculos, :quantveiculos, :condveiculos, :verbaestadual, :verbaorgao, :cadastentestaduais, :pencadin, :prosocial, :proativoinativo
end
