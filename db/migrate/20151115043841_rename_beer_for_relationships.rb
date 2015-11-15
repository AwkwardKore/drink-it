class RenameBeerForRelationships < ActiveRecord::Migration
  def change
    rename_column :beers, :brewery, :brewery_id
    rename_column :beers, :style, :style_id
  end
end
