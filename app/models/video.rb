# frozen_string_literal: true

class Video < ApplicationRecord
  # belongs_to :user
  has_many :playlist_videos, dependent: :destroy
  has_many :playlists, through: :playlist_videos
end
