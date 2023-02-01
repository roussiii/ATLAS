class AddColumnToDestinations < ActiveRecord::Migration[7.0]
  def change
    add_column :destinations, :price, :integer
  end
end
