class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :path_name
      t.string :file_name
      t.string :md5
      t.string :perceptual_hash
      t.string :status
      t.integer :width
      t.integer :height
      t.string :color
      t.string :exif_date


      t.timestamps null: false
    end
  end
end
