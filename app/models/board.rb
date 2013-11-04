class Board < ActiveRecord::Base
  belongs_to :forum, foreign_key: 'idForum'
  has_many :topics

  # boards may be nested
  belongs_to :parentBoard, class_name: 'Board', foreign_key: 'idParent'
  has_many :subBoards, class_name: 'Board'
end
