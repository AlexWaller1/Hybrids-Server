class CreateSkateparks < ActiveRecord::Migration[6.1]
  def change
    create_table :skateparks do |t|
      t.string :name
      t.string :location
      t.string :fetures
      t.string :image

      t.timestamps
    end
  end
end
