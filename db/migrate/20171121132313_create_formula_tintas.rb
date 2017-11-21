class CreateFormulaTintas < ActiveRecord::Migration[5.1]
  def change
    create_table :formula_tintas do |t|
      t.references :tinta, foreign_key: true
      t.references :base_tinta, foreign_key: true
      t.float :cantidad
      t.boolean :estado

      t.timestamps
    end
  end
end
