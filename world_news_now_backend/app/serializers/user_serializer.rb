class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :country

  has_many :news, through: :user_news
end
