class Band < ActiveRecord::Base
  attr_accessible :name

  validates :name, :presence => true, :uniqueness => { :scope => :name }

  has_many :band_artists
  has_many :artists, :through => :band_artists
  has_many :recordings
  has_many :albums
end