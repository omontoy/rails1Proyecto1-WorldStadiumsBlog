class CreateStadiums < ActiveRecord::Migration[5.0]
  def change
    create_table :stadiums do |t|
      t.string :name
      t.integer :capacity
      t.text :description

      t.timestamps
    end
  end
end
