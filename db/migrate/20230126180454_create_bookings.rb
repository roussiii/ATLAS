class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.integer :departure_date
      t.integer :arrival_date
      t.integer :return_date
      t.integer :price
      t.integer :pax
      t.integer :payload
      t.integer :user_id
      t.integer :spaceship_id
      t.integer :destination_id

      t.timestamps
    end
  end
end
