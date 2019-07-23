# frozen_string_literal: true

class PlaylistSerializer < ActiveModel::Serializer
  attributes :id, :title, :videos, :editable
  has_one :user

  def editable
    scope == object.user
  end
end
