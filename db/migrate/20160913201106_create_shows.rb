class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.integer :artist_id
      t.string :date
      t.string :time
      t.string :venue
      t.string :city

      t.timestamps
    end
  end
end
