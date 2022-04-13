class DropEquipment < ActiveRecord::Migration[6.1]
  def change
    drop_table :equipment
  end
end
