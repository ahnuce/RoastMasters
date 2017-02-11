class AddImgUrlToRoasts < ActiveRecord::Migration[5.0]
  def change
    add_column :roasts, :img_url, :string
  end
end
