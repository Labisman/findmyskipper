class CreateListings < ActiveRecord::Migration[7.0]
  def change
    create_table :listings do |t|
      t.string :title
      t.text :description
      t.integer :rating
      t.references :user, null: false, foreign_key: true
      t.string :listing_address

      t.timestamps
    end
  end
end
