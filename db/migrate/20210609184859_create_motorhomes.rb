class CreateMotorhomes < ActiveRecord::Migration[6.1]
  def change
    create_table :motorhomes do |t|
      t.string :model
      t.string :year
      t.string :mileage
      t.string :color
      t.string :image

      t.timestamps
    end
  end
end
