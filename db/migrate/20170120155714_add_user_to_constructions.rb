class AddUserToConstructions < ActiveRecord::Migration[5.0]
  def change
    add_reference :constructions, :user, foreign_key: true
  end
end
