class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.integer :placa_id
      t.text :coment
      t.integer :usuario

      t.timestamps
    end
    add_index :comentarios, [:placa_id, :created_at]
  end
end
