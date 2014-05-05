class CreateFuncionarios < ActiveRecord::Migration
  def change
    create_table :funcionarios do |t|
      t.string :codigo
      t.string :nome
      t.text :endereco
      t.string :telefone

      t.timestamps
    end
  end
end
