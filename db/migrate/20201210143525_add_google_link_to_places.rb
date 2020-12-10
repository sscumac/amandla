class AddGoogleLinkToPlaces < ActiveRecord::Migration[6.0]
  def change
    add_column :places, :google_maps_url, :string
  end
end
