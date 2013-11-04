class ForumUrl < ActiveRecord::Base
	belongs_to :forum, foreign_key: 'idForum'
end
