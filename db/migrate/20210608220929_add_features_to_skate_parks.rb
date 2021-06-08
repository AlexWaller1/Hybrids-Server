class AddFeaturesToSkateParks < ActiveRecord::Migration[6.1]
  def change
    add_column :skateparks, :features, :text
  end
end
