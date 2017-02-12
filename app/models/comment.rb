class Comment < ApplicationRecord
  belongs_to :roast
  belongs_to :user
end
