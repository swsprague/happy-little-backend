class PlaylistVideoSerializer < ActiveModel::Serializer
  attributes :id
  has_one :playlist
  has_one :video
end
