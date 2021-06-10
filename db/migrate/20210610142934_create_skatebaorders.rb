class CreateSkatebaorders < ActiveRecord::Migration[6.1]
  def change
    create_table :skatebaorders do |t|
      t.string :name
      t.string :hometown
      t.string :style
      t.string :biography
      t.string :image

      t.timestamps
    end
  end
end
