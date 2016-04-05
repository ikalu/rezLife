class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :fname, null: false
      t.string :lname, null: false
      t.string :st_id, null: false

      t.timestamps null: false
    end
  end
end
