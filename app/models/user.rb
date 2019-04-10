class User < ApplicationRecord
  has_many :user_pallets, :dependent => :destroy
  has_many :pallets, through: :user_pallets, :dependent => :destroy

  has_secure_password

  validates :username, uniqueness: true
end
