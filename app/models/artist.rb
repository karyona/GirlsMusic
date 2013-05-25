class Artist < ActiveRecord::Base
  attr_accessible :description, :name, :sex

  has_many :albums
end
