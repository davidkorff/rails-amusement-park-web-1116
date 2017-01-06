class CreateRides < ActiveRecord::Migration
  # Write your migrations here
  create_table :rides do |f|
    f.string :name
    f.integer :tickets
    f.integer :nausea_rating
    f.integer :happiness_rating
    f.integer :min_height
  end
end
