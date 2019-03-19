class Pallet < ApplicationRecord
  has_many :user_pallets
  has_many :users through: :user_pallets

end
