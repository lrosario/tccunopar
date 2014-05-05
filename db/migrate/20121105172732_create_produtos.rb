class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.string :codigo
      t.string :descricao
      t.string :setor
      t.decimal :preco_de_custo
      t.decimal :margem_de_lucro
      t.decimal :preco_de_venda

      t.timestamps
    end
  end
end
