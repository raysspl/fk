class Email < ActiveRecord::Base
  belongs_to :user, foreign_key: 'idUser'
  belongs_to :forum, foreign_key: 'idForum'
end
