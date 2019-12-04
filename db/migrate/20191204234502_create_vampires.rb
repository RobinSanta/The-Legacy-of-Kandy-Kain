class CreateVampires < ActiveRecord::Migration[6.0]
  def change
    create_table :vampires do |t|
      t.string :name
      t.integer :hp
      t.integer :speed
      t.integer :danger_level

      t.timestamps
    end
  end
end
