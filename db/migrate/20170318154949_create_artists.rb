class CreateArtists < ActiveRecord::Migration[5.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :picture
      t.text :bio
      t.datetime :born
      t.datetime :died

      t.timestamps
    end
  end
end
