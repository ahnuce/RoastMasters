class Roast < ApplicationRecord
  belongs_to :admin
  has_many :comments, dependent: :destroy
  before_save :downcase_fields
  def downcase_fields
    self.body.downcase!
  end
end
