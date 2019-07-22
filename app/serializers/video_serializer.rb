class VideoSerializer < ActiveModel::Serializer
  attributes :id, :video_id, :episode_number, :name, :description, :air_date, :season_num
end
