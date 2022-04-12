class AddPhotoToFighters < ActiveRecord::Migration[6.1]
  def change
    add_column :fighters, :photo, :string
  end
end
