class Person < ApplicationRecord
  validates :name, presence: true

  has_many :wrote_songs, class_name: "Song", foreign_key: "lyricist_id"
  has_many :composed_songs, class_name: "Song", foreign_key: "composer_id"
  has_many :arranged_songs, class_name: "Song", foreign_key: "lyricist_id"
  has_many :albums, class_name: "Album", foreign_key: "artist_id"

  def to_s
    name
  end

end
