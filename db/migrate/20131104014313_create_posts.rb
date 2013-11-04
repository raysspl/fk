class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :idUser
      t.integer :idTopic
      t.integer :idForum
      t.integer :idPostReplyTo
      t.string :title
      t.text :text
      t.date :dateCreated

      t.timestamps
    end
  end
end
