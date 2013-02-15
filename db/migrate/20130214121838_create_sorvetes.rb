class CreateSorvetes < ActiveRecord::Migration
  def change
    create_table :sorvetes do |t|
      t.string :sabor
      t.float :preco
      t.boolean :cobertura

      t.timestamps
    end
  end
end
