class CreatePlaces < ActiveRecord::Migration[6.0]
  def change
    create_table :places do |t|
      t.string :address
      t.string :name
      t.string :category
      t.text :story
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
