class AddArtistIdToAlbums < ActiveRecord::Migration
  def change
    change_table :albums do |t|
      t.references :artist
    end
  end
end
