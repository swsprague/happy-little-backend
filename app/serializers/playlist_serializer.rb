# frozen_string_literal: true

class PlaylistSerializer < ActiveModel::Serializer
  attributes :id, :title, :videos
  has_one :user
end
