class Artist < ActiveRecord::Base
  attr_accessible :name

  has_many :authored_songs, :class_name => 'Song'
  has_many :band_artists, :foreign_key => :artist_id
  has_many :bands, :through => :band_artists
  has_many :performed_songs, :through => :band_artists, :source => :recordings,
    :foreign_key => :recording_id
end