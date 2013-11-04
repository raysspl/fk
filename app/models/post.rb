class Post < ActiveRecord::Base
  belongs_to :user, foreign_key: 'idUser'
  belongs_to :topic, foreign_key: 'idTopic'
  belongs_to :forum, foreign_key: 'idForum'

  belongs_to :inReplyTo, class_name: 'Post', foreign_key: 'idPostReplyTo'
  has_many :replies, class_name: 'Post'
end
