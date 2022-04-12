class AddAttackToFighters < ActiveRecord::Migration[6.1]
  def change
    add_column :fighters, :attack, :integer, default: 0
  end
end
