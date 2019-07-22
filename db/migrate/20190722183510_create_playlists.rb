class CreatePlaylists < ActiveRecord::Migration[5.2]
  def change
    create_table :playlists do |t|
      t.references :user, foreign_key: true
      t.references :video, foreign_key: true
      t.string :title

      t.timestamps
    end
  end
end
