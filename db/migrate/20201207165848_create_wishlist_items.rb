class CreateWishlistItems < ActiveRecord::Migration[6.0]
  def change
    create_table :wishlist_items do |t|
      t.references :user, null: false, foreign_key: true
      t.references :place, null: false, foreign_key: true

      t.timestamps
    end
  end
end
