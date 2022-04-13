class CreateEquipment < ActiveRecord::Migration[6.1]
  def change
    create_table :equipment do |t|
      t.string :name
      t.integer :attack, default: 0
      t.integer :defense, default: 0

      t.timestamps
    end
  end
end
