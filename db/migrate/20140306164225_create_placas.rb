class CreatePlacas < ActiveRecord::Migration
  def change
    create_table :placas do |t|
      t.string :numero

      t.timestamps
    end
  end
end
