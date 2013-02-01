class BandArtist < ActiveRecord::Base
  attr_accessible :band_id, :artist_id

  validates :artist_id, :uniqueness => { :scope => :band_id }

  belongs_to :band
  belongs_to :artist
end