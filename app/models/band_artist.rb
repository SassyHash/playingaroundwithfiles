class BandArtist < ActiveRecord::Base
  attr_accessible :band_id, :artist_id

  # validates :artist_id, :pre

  belongs_to :band
  belongs_to :artist
end