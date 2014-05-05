class Cliente < ActiveRecord::Base
  attr_accessible :codigo, :endereco, :nome, :telefone
end
