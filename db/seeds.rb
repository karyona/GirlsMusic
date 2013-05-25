# encoding=utf-8
require File.dirname(__FILE__) + '/../test/blueprints'

p 'Cleaning up db data'
DatabaseCleaner.strategy = :truncation
DatabaseCleaner.clean

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

1.upto(5).each do |i|
  artist = Artist.make!

  1.upto(5).each do |j|
    album = Album.make!(:artist => artist)

    1.upto(5).each do |k|
      Track.make!(:album => album)
    end
  end

end