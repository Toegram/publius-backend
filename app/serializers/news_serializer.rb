class NewsSerializer < ActiveModel::Serializer
  attributes :id, :author, :content, :description, :published_at, :source, :title, :url, :url_to_image
  has_many :users, through: :user_news
end
