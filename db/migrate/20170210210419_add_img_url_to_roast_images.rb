class AddImgUrlToRoastImages < ActiveRecord::Migration[5.0]
  def change
    add_column :roast_images, :img_url, :string
  end
end
