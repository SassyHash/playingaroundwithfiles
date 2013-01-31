class Album < ActiveRecord::Base
  attr_accessible :name, :band_id

  belongs_to :band
  has_many :recordings

end