class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :videos, :video_id, :youtube_id
  end
end
