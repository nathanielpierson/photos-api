class CreatePhotos < ActiveRecord::Migration[7.2]
  def change
    create_table :photos do |t|
      t.string :image_url
      t.string :alt_text

      t.timestamps
    end
  end
end
