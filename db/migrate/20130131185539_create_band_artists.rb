class CreateBandArtists < ActiveRecord::Migration
  def change
    create_table :band_artists do |t|
      t.integer :band_id
      t.integer :artist_id

      t.timestamp
    end
  end
end
