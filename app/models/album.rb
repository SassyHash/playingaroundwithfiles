class Album < ActiveRecord::Base
  attr_accessible :name, :band_id, :genre_id

  belongs_to :band
  belongs_to :genre
  has_many :recordings

end