class CreateUserLocationsTable < ActiveRecord::Migration
  def change
    create_table :user_locations do |t|
      t.references :user
      t.references :location
      t.string :comment
      t.boolean :bookmark


      t.timestamps
  end
end
end
