class AddNameToMotorhomes < ActiveRecord::Migration[6.1]
  def change
    add_column :motorhomes, :name, :string
  end
end
