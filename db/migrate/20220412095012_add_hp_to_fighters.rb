class AddHpToFighters < ActiveRecord::Migration[6.1]
  def change
    add_column :fighters, :hp, :integer, default: 0
  end
end
