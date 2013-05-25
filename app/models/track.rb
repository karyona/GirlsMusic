class Track < ActiveRecord::Base
  attr_accessible :duration, :name, :number
  belongs_to :album
end
