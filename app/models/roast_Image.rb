class RoastImage < ApplicationRecord
  has_many :roasts
  belongs_to :admin
end