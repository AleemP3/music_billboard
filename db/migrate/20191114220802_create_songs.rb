class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.integer :duration
      t.string :artist
      t.belongs_to :artist, null: false, foreign_key: true
      t.belongs_to :billboard, null: false, foreign_key: true

      t.timestamps
    end
  end
end
