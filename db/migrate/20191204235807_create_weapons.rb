class CreateWeapons < ActiveRecord::Migration[6.0]
  def change
    create_table :weapons do |t|
      t.string :name
      t.integer :damage
      t.integer :speed
      t.string :description

      t.timestamps
    end
  end
end
