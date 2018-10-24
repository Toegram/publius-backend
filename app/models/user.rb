class User < ApplicationRecord
  has_secure_password
  validates :name, uniqueness: { case_sensitive: false }
  has_many :user_news
  has_many :news, through: :user_news
end
