class CreateHunters < ActiveRecord::Migration[6.0]
  def change
    create_table :hunters do |t|
      t.string :name
      t.integer :hp
      t.integer :speed

      t.timestamps
    end
  end
end
