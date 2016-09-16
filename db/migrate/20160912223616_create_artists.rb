class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.string :email
      t.string :location
      t.string :photo_url
      t.string :bio
      t.string :hashed_password

      t.timestamps
    end
  end
end
