class CreateFights < ActiveRecord::Migration[6.1]
  def change
    create_table :fights do |t|
      t.references :winner, index: true, foreign_key: { to_table: :fighters }
      t.references :loser, index: true, foreign_key: { to_table: :fighters }

      t.timestamps
    end
  end
end
