class VideoSerializer < ActiveModel::Serializer
  attributes :id, :video_id, :name, :description, :air_date, :season_num
end
