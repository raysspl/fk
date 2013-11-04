class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :firstName
      t.string :lastName
      t.date :dateOfBirth
      t.date :dateCreated
      t.string :username
      t.string :password
      t.string :salt
      t.integer :role
      t.integer :idForum

      t.timestamps
    end
  end
end
