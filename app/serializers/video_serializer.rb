# frozen_string_literal: true

class VideoSerializer < ActiveModel::Serializer
  attributes :id, :youtube_id, :episode_number, :name, :description, :air_date, :season_num, :playlists
  # belongs_to :user
end
