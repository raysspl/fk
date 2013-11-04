class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.integer :idUser
      t.integer :idBoard
      t.integer :idForum

      t.timestamps
    end
  end
end
