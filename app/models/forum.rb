class Forum < ActiveRecord::Base
  belongs_to :owner, foreign_key: 'idOwner'
  has_many :forumConfig
  has_many :forumUrls
  has_many :boards
  has_many :topics
  has_many :users
  has_many :emails
  has_many :posts
end
