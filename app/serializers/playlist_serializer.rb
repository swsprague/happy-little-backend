# frozen_string_literal: true

class PlaylistSerializer < ActiveModel::Serializer
  attributes :id, :title
  has_one :user
end
