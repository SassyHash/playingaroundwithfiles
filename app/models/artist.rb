class Artist < ActiveRecord::Base
  attr_accessible :name

  has_many :authored_songs, :class_name => 'Song'
  has_many :performed_songs, :through => :band, :source => :recordings,
    :foreign_key => :recording_id
end