class BandArtist < ActiveRecord::Base
  attr_accessible :band_id, :artist_id

  belongs_to :band
  belongs_to :artist
end