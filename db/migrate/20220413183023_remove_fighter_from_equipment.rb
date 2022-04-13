class RemoveFighterFromEquipment < ActiveRecord::Migration[6.1]
  def change
    remove_column :equipment, :fighter_id, :integer
  end
end
