class CreateEstoques < ActiveRecord::Migration
  def change
    create_table :estoques do |t|
      t.integer :quantidade
      t.integer :quantidade_minima
      t.references :produto

      t.timestamps
    end
    add_index :estoques, :produto_id
  end
end
