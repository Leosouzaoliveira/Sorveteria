class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.string :nome, :limit = 40
      t.string :tipo
      t.decimal :preco

      t.timestamps
    end
  end
end
