class CreateFans < ActiveRecord::Migration
  def change
    create_table :fans do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.string :location
      t.text :bio
      t.string :photo_url

      t.timestamps null: false
    end
  end
end
