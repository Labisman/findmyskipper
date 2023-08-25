class AddDefaultRating < ActiveRecord::Migration[7.0]
  def change
    change_column :listings, :rating, :integer, :default => 0
  end
end
