class User < ActiveRecord::Base
  belongs_to :forum, foreign_key: 'idForum'
  has_many :emails
  has_many :topics
  has_many :posts
end
