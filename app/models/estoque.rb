class Estoque < ActiveRecord::Base
  belongs_to :produto
  attr_accessible :quantidade, :quantidade_minima, :produto_id
end
