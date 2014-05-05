class Produto < ActiveRecord::Base
  attr_accessible :codigo, :descricao, :margem_de_lucro, :preco_de_custo, :preco_de_venda, :setor
  has_many :estoques

  def to_s
    descricao
  end

end
