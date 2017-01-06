class CreateUsers < ActiveRecord::Migration
  # Write your migrations here
  create_table :users do |f|
    f.string :name
    f.string :password
    f.integer :nausea
    f.integer :happiness
    f.integer :tickets
    f.integer :height
  end
end
