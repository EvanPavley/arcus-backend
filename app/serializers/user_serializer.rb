class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :password_digest

  has_many :pallets
  has_many :user_pallets
end
