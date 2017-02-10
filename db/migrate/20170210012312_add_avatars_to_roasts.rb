class AddAvatarsToRoasts < ActiveRecord::Migration[5.0]
  def self.up
  change_table :roasts do |t|
    t.attachment :avatar
  end
end

def self.down
  drop_attached_file :roasts, :avatar
end
end
