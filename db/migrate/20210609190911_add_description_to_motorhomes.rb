class AddDescriptionToMotorhomes < ActiveRecord::Migration[6.1]
  def change
    add_column :motorhomes, :description, :text
  end
end
