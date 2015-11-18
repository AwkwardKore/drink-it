class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :name
      t.float :abv
      t.float :flavor
      t.float :color
      t.float :bubbly
      t.integer :brewery
      t.integer :style

      t.timestamps null: false
    end
  end
end
