class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :name
      t.date :dateCreated
      t.text :description
      t.integer :idParent
      t.integer :idForum

      t.timestamps
    end
  end
end
