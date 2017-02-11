class RoastImage < ApplicationRecord
  has_many :roasts
  belongs_to :user
end
