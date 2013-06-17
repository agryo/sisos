class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nome
      t.integer :cpf
      t.string :endereco
      t.integer :cep
      t.string :cidade
      t.string :telefone

      t.timestamps
    end
  end
end
