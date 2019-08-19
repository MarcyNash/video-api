class VideoSerializer < ActiveModel::Serializer
  attributes :id, :video_uid, :song_title, :artist_title, :city_title
end
