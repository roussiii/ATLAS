class CreateSpaceships < ActiveRecord::Migration[7.0]
  def change
    create_table :spaceships do |t|
      t.string :name
      t.string :banner_url
      t.integer :payload
      t.integer :pax
      t.boolean :availability
      t.integer :user_id

      t.timestamps
    end
  end
end
