class User < ApplicationRecord
  has_many :user_news
  has_many :news, through: :user_news
end
