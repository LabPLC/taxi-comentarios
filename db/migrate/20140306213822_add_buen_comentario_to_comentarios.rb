class AddBuenComentarioToComentarios < ActiveRecord::Migration
  def change
    add_column :comentarios, :buen_comentario, :bool
  end
end
