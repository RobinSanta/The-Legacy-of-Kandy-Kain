class AddVampireToEncounter < ActiveRecord::Migration[6.0]
  def change
    add_column :encounters, :vampire_id, :integer
  end
end
