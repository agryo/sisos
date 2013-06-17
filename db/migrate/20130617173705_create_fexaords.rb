class CreateFexaords < ActiveRecord::Migration
  def change
    create_table :fexaords do |t|
      t.references :ordem

      t.timestamps
    end
    add_index :fexaords, :ordem_id
  end
end
