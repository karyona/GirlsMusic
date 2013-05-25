class AddAlbumIdToTrack < ActiveRecord::Migration
  def change
  	change_table :tracks do |t|
      t.references :album
    end
  end
end
