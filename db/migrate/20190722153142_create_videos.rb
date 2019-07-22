class CreateVideos < ActiveRecord::Migration[5.2]
  def change
    create_table :videos do |t|
      t.string :video_id
      t.integer :episode_number
      t.string :name
      t.string :description
      t.date :air_date
      t.integer :season_num

      t.timestamps
    end
  end
end
