class Fornecedore < ActiveRecord::Base
  attr_accessible :codigo, :endereco, :nome, :telefone
end
