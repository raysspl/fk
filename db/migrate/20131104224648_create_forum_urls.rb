class CreateForumUrls < ActiveRecord::Migration
  def change
    create_table :forum_urls do |t|
      t.string :url
      t.integer :idForum

      t.timestamps
    end
  end
end
