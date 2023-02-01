class AddBannerToDestinations < ActiveRecord::Migration[7.0]
  def change
    add_column :destinations, :banner_url, :string
  end
end
