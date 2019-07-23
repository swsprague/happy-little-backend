class CreatePlaylistVideos < ActiveRecord::Migration[5.2]
  def change
    create_table :playlist_videos do |t|
      t.references :playlist, foreign_key: true
      t.references :video, foreign_key: true

      t.timestamps
    end
  end
end
