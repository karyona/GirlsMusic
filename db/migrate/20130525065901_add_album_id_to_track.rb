class AddAlbumIdToTrack < ActiveRecord::Migration
  def change
  	change_table :track do |t|
      t.references :album
  end
end
