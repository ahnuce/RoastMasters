class Comment < ApplicationRecord
  belongs_to :roast
  belongs_to :user
  acts_as_votable

  def downcase_fields
    self.body.downcase!
  end
end
