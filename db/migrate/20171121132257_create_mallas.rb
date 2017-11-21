class CreateMallas < ActiveRecord::Migration[5.1]
  def change
    create_table :mallas do |t|
      t.integer :num_malla
      t.text :caracteristica
      t.boolean :estado

      t.timestamps
    end
  end
end
