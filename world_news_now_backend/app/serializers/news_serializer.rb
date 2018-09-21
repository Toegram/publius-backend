class NewsSerializer < ActiveModel::Serializer
  attributes :id, :url

  has_many :users, through: :user_news
end
