class CreateVideos < ActiveRecord::Migration[5.2]
  def change
    create_table :videos do |t|
      t.string :video_uid
      t.string :song_title
      t.string :artist_title
      t.string :city_title

      t.timestamps
    end
  end
end
