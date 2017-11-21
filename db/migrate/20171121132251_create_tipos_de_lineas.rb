class CreateTiposDeLineas < ActiveRecord::Migration[5.1]
  def change
    create_table :tipos_de_lineas do |t|
      t.string :descripcion_linea
      t.string :caracteristica
      t.boolean :estado

      t.timestamps
    end
  end
end
