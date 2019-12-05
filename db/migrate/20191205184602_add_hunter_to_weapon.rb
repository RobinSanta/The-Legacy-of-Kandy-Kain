class AddHunterToWeapon < ActiveRecord::Migration[6.0]
  def change
    add_column :weapons, :hunter_id, :integer
  end
end
