class CreateCities < ActiveRecord::Migration[6.1]
  def change
    create_table :cities do |t|
      t.string :name
      t.string :population
      t.string :state
      t.string :country
      t.string :image

      t.timestamps
    end
  end
end
