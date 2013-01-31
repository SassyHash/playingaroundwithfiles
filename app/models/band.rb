class Band < ActiveRecord::Base
  attr_accessible :name, :artist_id

  has_many :artists
  has_many :recordings
  has_many :albums
  has_many :genres, :through => :albums

end