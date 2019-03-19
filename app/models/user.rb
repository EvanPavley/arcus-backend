class User < ApplicationRecord
  has_many :user_pallets
  has_many :pallets through: :user_pallets

end
