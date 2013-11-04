class CreateForums < ActiveRecord::Migration
  def change
    create_table :forums do |t|
      t.integer :idOwner
      t.string :name

      t.timestamps
    end
  end
end
