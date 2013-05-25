class Album < ActiveRecord::Base
  attr_accessible :description, :name, :pub_data

  belongs_to :artist
end
