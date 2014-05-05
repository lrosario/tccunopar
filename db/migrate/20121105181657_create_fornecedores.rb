class CreateFornecedores < ActiveRecord::Migration
  def change
    create_table :fornecedores do |t|
      t.string :codigo
      t.string :nome
      t.text :endereco
      t.string :telefone

      t.timestamps
    end
  end
end
