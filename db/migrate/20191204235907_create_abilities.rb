class CreateAbilities < ActiveRecord::Migration[6.0]
  def change
    create_table :abilities do |t|
      t.string :name
      t.integer :damage
      t.integer :speed
      t.string :description

      t.timestamps
    end
  end
end
