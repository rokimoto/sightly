class AddYelpIdColumnToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :yelp_id, :string
  end
end
