class Topic < ActiveRecord::Base
  belongs_to :forum, foreign_key: 'idForum'
  belongs_to :board, foreign_key: 'idBoard'
  belongs_to :user, foreign_key: 'idUser'
  has_many :posts
end
