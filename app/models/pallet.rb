class Pallet < ApplicationRecord
  has_many :user_pallets, :dependent => :destroy
  has_many :users, through: :user_pallets, :dependent => :destroy
end
