class RemoveGoogleMapsUrlFromPlaces < ActiveRecord::Migration[6.0]
  def change
    remove_column :places, :google_maps_url, :string
  end
end
