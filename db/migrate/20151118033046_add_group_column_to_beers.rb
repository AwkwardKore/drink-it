class AddGroupColumnToBeers < ActiveRecord::Migration
  def change
    add_column :beers, :group, :string
  end
end
