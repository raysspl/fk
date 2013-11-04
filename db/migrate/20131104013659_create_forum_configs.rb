class CreateForumConfigs < ActiveRecord::Migration
  def change
    create_table :forum_configs do |t|
      t.integer :idForum
      t.string :key
      t.string :value

      t.timestamps
    end
  end
end
