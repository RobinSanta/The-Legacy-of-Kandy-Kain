class CreateEncounters < ActiveRecord::Migration[6.0]
  def change
    create_table :encounters do |t|
      t.boolean :advantage

      t.timestamps
    end
  end
end
