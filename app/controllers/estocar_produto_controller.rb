
class EstocarProdutoController < ApplicationController
  def new
    @produto = Produto.find(params[:id])
    @estoque = @produto.estoques.new
  end

  def create
    @estoque = Estoque.new(params[:estoque])
    @edb = Estoque.find_by_produto_id(@estoque.produto_id)
    unless @edb
      @estoque.save
    else
      @edb.update_attributes(:quantidade => @estoque.quantidade.to_i + @edb.quantidade.to_i, :quantidade_minima => @estoque.quantidade_minima)
    end
  end
end
