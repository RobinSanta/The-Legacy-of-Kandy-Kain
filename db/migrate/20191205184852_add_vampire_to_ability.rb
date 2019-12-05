class AddVampireToAbility < ActiveRecord::Migration[6.0]
  def change
    add_column :abilities, :vampire_id, :integer
  end
end
