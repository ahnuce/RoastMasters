class User < ApplicationRecord

  has_many :comments
  acts_as_voter
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  def admin?
    has_role?(:admin)
  end

end
