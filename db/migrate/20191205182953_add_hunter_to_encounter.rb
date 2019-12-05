class AddHunterToEncounter < ActiveRecord::Migration[6.0]
  def change
    add_column :encounters, :hunter_id, :integer
  end
end
