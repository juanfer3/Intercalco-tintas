class CreateTintas < ActiveRecord::Migration[5.1]
  def change
    create_table :tintas do |t|
      t.string :codigo
      t.string :pantone
      t.references :malla, foreign_key: true
      t.string :tipo_de_unidad
      t.float :cantida
      t.float :mezcla_total
      t.boolean :estado

      t.timestamps
    end
  end
end
