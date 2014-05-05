class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :codigo
      t.string :nome
      t.text :endereco
      t.string :telefone

      t.timestamps
    end
  end
end
