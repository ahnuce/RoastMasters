class CreateRoastImages < ActiveRecord::Migration[5.0]
  def change
    create_table :roast_images do |t|

      t.timestamps
    end
  end
end
