class CreateOrdems < ActiveRecord::Migration
  def change
    create_table :ordems do |t|
      t.references :cliente
      t.string :maquina
      t.string :pecas
      t.string :observacoes

      t.timestamps
    end
    add_index :ordems, :cliente_id
  end
end
