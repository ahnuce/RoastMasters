class Comment < ApplicationRecord
  belongs_to :roast
  belongs_to :user
  acts_as_votable

  searchable do
    text :body, :email
  end
end
