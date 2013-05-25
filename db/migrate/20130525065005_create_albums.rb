class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name
      t.date :pub_data
      t.text :description

      t.timestamps
    end
  end
end
