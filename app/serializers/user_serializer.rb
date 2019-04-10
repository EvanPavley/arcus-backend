class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email

  has_many :pallets
  has_many :user_pallets
end
