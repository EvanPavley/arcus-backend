class UserPallet < ApplicationRecord
  belongs_to :user
  belongs_to :pallet
end
