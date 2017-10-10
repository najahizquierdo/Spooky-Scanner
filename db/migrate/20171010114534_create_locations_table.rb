class CreateLocationsTable < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name, null: false
      t.string :body, null: false
      t.string :address, null: false

      t.timestamps
  end
end
end
