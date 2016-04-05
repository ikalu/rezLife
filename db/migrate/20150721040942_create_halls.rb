class CreateHalls < ActiveRecord::Migration
  def change
    create_table :halls do |t|
      t.string :name, null: false
      t.string :num_of_rooms
      t.string :manager

      t.timestamps null: false
    end
  end
end
