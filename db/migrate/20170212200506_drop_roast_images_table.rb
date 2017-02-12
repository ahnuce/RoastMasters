class DropRoastImagesTable < ActiveRecord::Migration[5.0]
  def change
    drop_table :roast_images
  end
end
