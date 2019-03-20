class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :password

  has_many :pallets
  has_many :user_pallets
end
