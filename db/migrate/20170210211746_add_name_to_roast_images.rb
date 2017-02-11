class AddNameToRoastImages < ActiveRecord::Migration[5.0]
  def change
    add_column :roast_images, :name, :string
  end
end
