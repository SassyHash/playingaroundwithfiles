class Song < ActiveRecord::Base
  attr_accessible :name, :artist_id

  belongs_to :artist
  has_many :recordings



end