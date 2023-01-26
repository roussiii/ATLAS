class CreateDestinations < ActiveRecord::Migration[7.0]
  def change
    create_table :destinations do |t|
      t.string :name
      t.string :image_url
      t.integer :distance
      t.string :geocoding

      t.timestamps
    end
  end
end
