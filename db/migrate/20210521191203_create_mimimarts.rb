class CreateMimimarts < ActiveRecord::Migration[6.1]
  def change
    create_table :mimimarts do |t|
      t.string :name
      t.string :address
      t.string :sodamachine
      t.string :description
      t.string :state
      t.string :image

      t.timestamps
    end
  end
end
