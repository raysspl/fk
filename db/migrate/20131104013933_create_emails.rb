class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.integer :idUser
      t.string :address
      t.date :dateCreated
      t.boolean :verified
      t.integer :idForum

      t.timestamps
    end
  end
end
